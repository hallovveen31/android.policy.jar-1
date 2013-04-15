.class public Lcom/android/internal/policy/impl/sec/DualModeUtils;
.super Ljava/lang/Object;
.source "DualModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/DualModeUtils$SimCardInfo;
    }
.end annotation


# static fields
.field static CONTENT_URI_NEWCARD:Ljava/lang/String; = null

.field private static final DEBUG:Z = true

.field private static DSContext:Landroid/content/Context;

.field static SIM01:Lcom/android/internal/policy/impl/sec/DualModeUtils$SimCardInfo;

.field static SIM02:Lcom/android/internal/policy/impl/sec/DualModeUtils$SimCardInfo;

.field private static TAG:Ljava/lang/String;

.field private static mDisableSystemKey:Z

.field private static mPINPUKRequest:Z

.field private static mPINPUKSlot:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 30
    const-string v0, "DualModeUtils"

    sput-object v0, Lcom/android/internal/policy/impl/sec/DualModeUtils;->TAG:Ljava/lang/String;

    .line 32
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/DualModeUtils;->mPINPUKRequest:Z

    .line 36
    sput v1, Lcom/android/internal/policy/impl/sec/DualModeUtils;->mPINPUKSlot:I

    .line 41
    const-string v0, "content://com.sec.provider.simcardmanagement/cardCheck"

    sput-object v0, Lcom/android/internal/policy/impl/sec/DualModeUtils;->CONTENT_URI_NEWCARD:Ljava/lang/String;

    .line 42
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/DualModeUtils;->mDisableSystemKey:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 641
    return-void
.end method

.method public static SimRefreshCheck(Landroid/content/Context;)Z
    .registers 2
    .parameter "mContext"

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method private static activateSimSlot(IZ)V
    .registers 2
    .parameter "slot"
    .parameter "activate"

    .prologue
    .line 478
    return-void
.end method

.method public static getOldCardID(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .parameter "card_id"
    .parameter "slotNumber"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 521
    const-string v9, "0"

    .line 522
    .local v9, slot_number:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 524
    .local v6, cardCheck:Ljava/lang/Boolean;
    const/4 v7, 0x0

    .line 525
    .local v7, cursor:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "( CARD_ID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 528
    .local v3, where:Ljava/lang/String;
    :try_start_22
    sget-object v0, Lcom/android/internal/policy/impl/sec/DualModeUtils;->DSContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/sec/DualModeUtils;->CONTENT_URI_NEWCARD:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "SLOT_NUMBER"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 530
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_89

    .line 531
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 533
    :cond_48
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 534
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_50
    .catchall {:try_start_22 .. :try_end_50} :catchall_a6
    .catch Landroid/database/SQLException; {:try_start_22 .. :try_end_50} :catch_96

    move-result v0

    if-nez v0, :cond_48

    .line 543
    :cond_53
    :goto_53
    if-eqz v7, :cond_58

    .line 544
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 547
    :cond_58
    :goto_58
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 548
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 552
    :goto_62
    sget-object v0, Lcom/android/internal/policy/impl/sec/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slot_number : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cardCheck : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 537
    :cond_89
    :try_start_89
    sget-object v0, Lcom/android/internal/policy/impl/sec/DualModeUtils;->TAG:Ljava/lang/String;

    const-string v1, "noCount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_94
    .catchall {:try_start_89 .. :try_end_94} :catchall_a6
    .catch Landroid/database/SQLException; {:try_start_89 .. :try_end_94} :catch_96

    move-result-object v6

    goto :goto_53

    .line 540
    :catch_96
    move-exception v8

    .line 541
    .local v8, e:Landroid/database/SQLException;
    :try_start_97
    const-string v0, "SQLException"

    invoke-virtual {v8}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catchall {:try_start_97 .. :try_end_a0} :catchall_a6

    .line 543
    if-eqz v7, :cond_58

    .line 544
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_58

    .line 543
    .end local v8           #e:Landroid/database/SQLException;
    :catchall_a6
    move-exception v0

    if-eqz v7, :cond_ac

    .line 544
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_ac
    throw v0

    .line 550
    :cond_ad
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_62
.end method

.method public static getPINPUKRequest()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 101
    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, mCDMAstate:Ljava/lang/String;
    const-string v4, "gsm.sim.state2"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, mGSMstate:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isDualModeDevice()I

    move-result v4

    if-ne v4, v3, :cond_36

    .line 106
    const-string v4, "PIN_REQUIRED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_34

    const-string v4, "PUK_REQUIRED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_34

    const-string v4, "PIN_REQUIRED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_34

    const-string v4, "PUK_REQUIRED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    :cond_34
    move v2, v3

    .line 117
    :cond_35
    :goto_35
    return v2

    .line 114
    :cond_36
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/DualModeUtils;->mPINPUKRequest:Z

    if-eqz v4, :cond_35

    move v2, v3

    .line 115
    goto :goto_35
.end method

.method public static getPINPUKSlot()I
    .registers 6

    .prologue
    const/4 v5, 0x1

    .line 123
    const-string v2, "ril.ICC_TYPE"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, mCDMAtype:Ljava/lang/String;
    const-string v2, "ril.ICC2_TYPE"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, mGSMtype:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/policy/impl/sec/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPINPUKSlot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/policy/impl/sec/DualModeUtils;->mPINPUKSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isDualModeDevice()I

    move-result v2

    if-ne v2, v5, :cond_3f

    .line 130
    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    const-string v2, "4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 132
    :cond_3d
    sput v5, Lcom/android/internal/policy/impl/sec/DualModeUtils;->mPINPUKSlot:I

    .line 140
    :cond_3f
    :goto_3f
    sget-object v2, Lcom/android/internal/policy/impl/sec/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPINPUKSlot return : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/policy/impl/sec/DualModeUtils;->mPINPUKSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget v2, Lcom/android/internal/policy/impl/sec/DualModeUtils;->mPINPUKSlot:I

    return v2

    .line 134
    :cond_5c
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6c

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 136
    :cond_6c
    const/4 v2, 0x2

    sput v2, Lcom/android/internal/policy/impl/sec/DualModeUtils;->mPINPUKSlot:I

    goto :goto_3f
.end method

.method private static getSimCardName(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/policy/impl/sec/DualModeUtils$SimCardInfo;Ljava/lang/String;)V
    .registers 11
    .parameter "nNum"
    .parameter "iccId"
    .parameter "SCInfo"
    .parameter "cardType"

    .prologue
    .line 582
    const/4 v6, 0x0

    .line 583
    .local v6, c:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(CARD_ID  = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'or CARD_ICCID = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') AND CARD_TYPE = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 586
    .local v3, where:Ljava/lang/String;
    :try_start_2e
    sget-object v0, Lcom/android/internal/policy/impl/sec/DualModeUtils;->DSContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.provider.simcardmanagement/registerinfo"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 589
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 591
    :cond_47
    const-string v0, "card_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/internal/policy/impl/sec/DualModeUtils$SimCardInfo;->SIMName:Ljava/lang/String;

    .line 592
    const-string v0, "icon_index"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/internal/policy/impl/sec/DualModeUtils$SimCardInfo;->nIconIndex:Ljava/lang/String;

    .line 593
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_66
    .catchall {:try_start_2e .. :try_end_66} :catchall_6f

    move-result v0

    if-nez v0, :cond_47

    .line 596
    :cond_69
    if-eqz v6, :cond_6e

    .line 597
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 599
    :cond_6e
    return-void

    .line 596
    :catchall_6f
    move-exception v0

    if-eqz v6, :cond_75

    .line 597
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_75
    throw v0
.end method

.method public static handleSimCardManagement(Landroid/content/Context;)V
    .registers 1
    .parameter "mContext"

    .prologue
    .line 458
    return-void
.end method

.method private static insertCardId(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "card_id"
    .parameter "sn"

    .prologue
    .line 618
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 619
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v2, "CARD_ID"

    invoke-virtual {v0, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v2, "SLOT_NUMBER"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    sget-object v2, Lcom/android/internal/policy/impl/sec/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertCardId CARD_ID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SLOT_NUMBER: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :try_start_31
    sget-object v2, Lcom/android/internal/policy/impl/sec/DualModeUtils;->DSContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/sec/DualModeUtils;->CONTENT_URI_NEWCARD:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_40
    .catch Landroid/database/SQLException; {:try_start_31 .. :try_end_40} :catch_41

    .line 629
    :goto_40
    return-void

    .line 626
    :catch_41
    move-exception v1

    .line 627
    .local v1, e:Landroid/database/SQLException;
    const-string v2, "SQLException"

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method private static isNewSimCard(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter "mCardID"
    .parameter "mSlot"

    .prologue
    .line 516
    const/4 v0, 0x0

    return v0
.end method

.method private static removeCardId()V
    .registers 5

    .prologue
    .line 633
    sget-object v1, Lcom/android/internal/policy/impl/sec/DualModeUtils;->TAG:Ljava/lang/String;

    const-string v2, "removeCardId"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :try_start_7
    sget-object v1, Lcom/android/internal/policy/impl/sec/DualModeUtils;->DSContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/sec/DualModeUtils;->CONTENT_URI_NEWCARD:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_18} :catch_19

    .line 639
    .local v0, e:Landroid/database/SQLException;
    :goto_18
    return-void

    .line 636
    .end local v0           #e:Landroid/database/SQLException;
    :catch_19
    move-exception v0

    .line 637
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v1, "SQLException"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method private static setNewCardID(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "card_id1"
    .parameter "card_id2"

    .prologue
    .line 558
    sget-object v0, Lcom/android/internal/policy/impl/sec/DualModeUtils;->TAG:Ljava/lang/String;

    const-string v1, "setNewCardID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v6, 0x0

    .line 561
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_8
    sget-object v0, Lcom/android/internal/policy/impl/sec/DualModeUtils;->DSContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/sec/DualModeUtils;->CONTENT_URI_NEWCARD:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 562
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3d

    .line 563
    sget-object v0, Lcom/android/internal/policy/impl/sec/DualModeUtils;->TAG:Ljava/lang/String;

    const-string v1, "setNewCardID getCount < 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-static {}, Lcom/android/internal/policy/impl/sec/DualModeUtils;->removeCardId()V

    .line 565
    const-string v0, "1"

    invoke-static {p0, v0}, Lcom/android/internal/policy/impl/sec/DualModeUtils;->insertCardId(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v0, "2"

    invoke-static {p1, v0}, Lcom/android/internal/policy/impl/sec/DualModeUtils;->insertCardId(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_5f
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_37} :catch_4f

    .line 576
    :goto_37
    if-eqz v6, :cond_3c

    .line 577
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 579
    :cond_3c
    :goto_3c
    return-void

    .line 568
    :cond_3d
    :try_start_3d
    sget-object v0, Lcom/android/internal/policy/impl/sec/DualModeUtils;->TAG:Ljava/lang/String;

    const-string v1, "setNewCardID getCount = 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const-string v0, "1"

    invoke-static {p0, v0}, Lcom/android/internal/policy/impl/sec/DualModeUtils;->updateCardId(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v0, "2"

    invoke-static {p1, v0}, Lcom/android/internal/policy/impl/sec/DualModeUtils;->updateCardId(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_3d .. :try_end_4e} :catchall_5f
    .catch Landroid/database/SQLException; {:try_start_3d .. :try_end_4e} :catch_4f

    goto :goto_37

    .line 572
    :catch_4f
    move-exception v7

    .line 574
    .local v7, e:Landroid/database/SQLException;
    :try_start_50
    const-string v0, "SQLException"

    invoke-virtual {v7}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_5f

    .line 576
    if-eqz v6, :cond_3c

    .line 577
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3c

    .line 576
    .end local v7           #e:Landroid/database/SQLException;
    :catchall_5f
    move-exception v0

    if-eqz v6, :cond_65

    .line 577
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_65
    throw v0
.end method

.method public static setPINPUKRequest(Z)V
    .registers 4
    .parameter "state"

    .prologue
    .line 90
    sput-boolean p0, Lcom/android/internal/policy/impl/sec/DualModeUtils;->mPINPUKRequest:Z

    .line 91
    sget-object v0, Lcom/android/internal/policy/impl/sec/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPINPUKRequest : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/policy/impl/sec/DualModeUtils;->mPINPUKRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public static setPINPUKSlot(I)V
    .registers 4
    .parameter "slot"

    .prologue
    .line 95
    sget-object v0, Lcom/android/internal/policy/impl/sec/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPINPUKSlot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sput p0, Lcom/android/internal/policy/impl/sec/DualModeUtils;->mPINPUKSlot:I

    .line 97
    return-void
.end method

.method private static updateCardId(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "card_id"
    .parameter "sn"

    .prologue
    .line 602
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "( SLOT_NUMBER=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 605
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v3, "CARD_ID"

    invoke-virtual {v0, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v3, "SLOT_NUMBER"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    sget-object v3, Lcom/android/internal/policy/impl/sec/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCardId CARD_ID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SLOT_NUMBER: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :try_start_4a
    sget-object v3, Lcom/android/internal/policy/impl/sec/DualModeUtils;->DSContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/internal/policy/impl/sec/DualModeUtils;->CONTENT_URI_NEWCARD:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5a
    .catch Landroid/database/SQLException; {:try_start_4a .. :try_end_5a} :catch_5b

    .line 615
    :goto_5a
    return-void

    .line 612
    :catch_5b
    move-exception v1

    .line 613
    .local v1, e:Landroid/database/SQLException;
    const-string v3, "SQLException"

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a
.end method
