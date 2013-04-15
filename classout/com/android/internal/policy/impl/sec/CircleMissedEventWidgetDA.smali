.class public Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;
.super Landroid/widget/LinearLayout;
.source "CircleMissedEventWidgetDA.java"

# interfaces
.implements Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$10;,
        Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;,
        Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;
    }
.end annotation


# static fields
.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"

.field private static final TAG:Ljava/lang/String; = "CircleMissedEventWidget"


# instance fields
.field private final CALL_PKG:Ljava/lang/String;

.field private final DEBUG:Z

.field private final EMAIL_PKG:Ljava/lang/String;

.field private final MISSED_EVENT_UPDATE:I

.field private MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private mBadgeObserver:Landroid/database/ContentObserver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

.field private mCircleUnlockView:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsHoveringUIEnabled:Z

.field mIsLiveWallpaper:Z

.field private mIsTouchExplorationEnabled:Z

.field private mMissedCall:Landroid/widget/LinearLayout;

.field private mMissedCallBackground:Landroid/widget/LinearLayout;

.field private mMissedCallCount:I

.field private mMissedCallIcon:Landroid/widget/ImageView;

.field private mMissedCallList:Landroid/view/View;

.field private mMissedCallNotiInfo:Landroid/app/NotificationInfo;

.field private mMissedCallTextView:Landroid/widget/TextView;

.field private mMissedMsg:Landroid/widget/LinearLayout;

.field private mMissedMsgBackground:Landroid/widget/LinearLayout;

.field private mMissedMsgCount:I

.field private mMissedMsgIcon:Landroid/widget/ImageView;

.field private mMissedMsgList:Landroid/view/View;

.field private mMissedMsgTextView:Landroid/widget/TextView;

.field private mMissedVvm:Landroid/widget/LinearLayout;

.field private mMissedVvmBackground:Landroid/widget/LinearLayout;

.field private mMissedVvmCount:I

.field private mMissedVvmIcon:Landroid/widget/ImageView;

.field private mMissedVvmTextView:Landroid/widget/TextView;

.field private mResolver:Landroid/content/ContentResolver;

.field private mUnlockMode:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;

.field private mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mUpperLayout:Landroid/widget/RelativeLayout;

.field private mWaterlockHelpText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;)V
    .registers 15
    .parameter "context"
    .parameter "circleUnlockView"
    .parameter "callback"
    .parameter "updateMonitor"
    .parameter "configuration"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 166
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->DEBUG:Z

    .line 68
    const-string v4, "com.android.phone"

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->CALL_PKG:Ljava/lang/String;

    .line 70
    const-string v4, "com.android.mms"

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->MSG_PKG:Ljava/lang/String;

    .line 72
    const-string v4, "com.android.email"

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->EMAIL_PKG:Ljava/lang/String;

    .line 81
    const/16 v4, 0x12c2

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->MISSED_EVENT_UPDATE:I

    .line 83
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->REQ_INDEX_CALL_EMAIL:I

    .line 85
    const/16 v4, 0x7b

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->REQ_INDEX_MSG:I

    .line 87
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    .line 89
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    .line 91
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmCount:I

    .line 137
    sget-object v4, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;->MissedNone:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUnlockMode:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;

    .line 143
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mIsTouchExplorationEnabled:Z

    .line 145
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mIsHoveringUIEnabled:Z

    .line 148
    iput-object v7, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallList:Landroid/view/View;

    .line 149
    iput-object v7, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgList:Landroid/view/View;

    .line 151
    new-instance v4, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$1;-><init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mHandler:Landroid/os/Handler;

    .line 168
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    .line 169
    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 170
    iput-object p4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 172
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mCircleUnlockView:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    .line 174
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 175
    .local v2, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v3, v4, Landroid/content/res/Configuration;->orientation:I

    .line 177
    .local v3, orientation:I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_228

    .line 178
    const-string v4, "CircleMissedEventWidget"

    const-string v7, "portrait mode"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const v4, 0x109005f

    invoke-virtual {v2, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 194
    :goto_5e
    const v4, 0x102030d

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUpperLayout:Landroid/widget/RelativeLayout;

    .line 196
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUpperLayout:Landroid/widget/RelativeLayout;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 199
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mIsTouchExplorationEnabled:Z

    if-nez v4, :cond_8b

    .line 200
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "touch_exploration_enabled"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 202
    .local v0, exploreByTouchMode:I
    if-ne v0, v6, :cond_237

    .line 203
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mIsTouchExplorationEnabled:Z

    .line 204
    const-string v4, "CircleMissedEventWidget"

    const-string v7, "explore by touch mode on"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .end local v0           #exploreByTouchMode:I
    :cond_8b
    :goto_8b
    const v4, 0x1020307

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallIcon:Landroid/widget/ImageView;

    .line 211
    const v4, 0x102030a

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgIcon:Landroid/widget/ImageView;

    .line 212
    const v4, 0x1020311

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmIcon:Landroid/widget/ImageView;

    .line 216
    const v4, 0x102030e

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    .line 217
    const v4, 0x1020313

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    .line 218
    const v4, 0x102030f

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmBackground:Landroid/widget/LinearLayout;

    .line 220
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 225
    const v4, 0x1020306

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    .line 226
    const v4, 0x1020309

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    .line 227
    const v4, 0x1020310

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvm:Landroid/widget/LinearLayout;

    .line 228
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 230
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvm:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    const v4, 0x1020308

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallTextView:Landroid/widget/TextView;

    .line 236
    const v4, 0x102030b

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgTextView:Landroid/widget/TextView;

    .line 237
    const v4, 0x1020312

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmTextView:Landroid/widget/TextView;

    .line 238
    const v4, 0x102030c

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mWaterlockHelpText:Landroid/widget/TextView;

    .line 239
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mWaterlockHelpText:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mWaterlockHelpText:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "lockscreen_wallpaper"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_240

    move v4, v5

    :goto_151
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mIsLiveWallpaper:Z

    .line 248
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v7, "com.sec.feature.hovering_ui"

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_197

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "pen_hovering_information_preview"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_197

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "pen_hovering"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_197

    .line 251
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mIsHoveringUIEnabled:Z

    .line 252
    new-instance v4, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;

    invoke-direct {v4, p1, p5}, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallList:Landroid/view/View;

    .line 253
    new-instance v4, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;

    invoke-direct {v4, p1, p5}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgList:Landroid/view/View;

    .line 254
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallList:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgList:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 259
    :cond_197
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$2;-><init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 304
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvm:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$3;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$3;-><init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 354
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$4;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$4;-><init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 411
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$5;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$5;-><init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 431
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$6;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$6;-><init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 453
    new-instance v4, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$7;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$7;-><init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    .line 482
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 483
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    const-string v4, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 487
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mResolver:Landroid/content/ContentResolver;

    .line 488
    new-instance v4, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$8;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$8;-><init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 499
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 501
    new-instance v4, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$9;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$9;-><init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mBadgeObserver:Landroid/database/ContentObserver;

    .line 511
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "content://com.sec.badge/apps"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 513
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->updateMissedEvent()V

    .line 516
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->getalternatePackageForMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_21d

    .line 517
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->getalternatePackageForMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->MSG_PKG:Ljava/lang/String;

    .line 519
    :cond_21d
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 520
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 521
    return-void

    .line 181
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_228
    const-string v4, "CircleMissedEventWidget"

    const-string v7, "landscape mode"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const v4, 0x1090060

    invoke-virtual {v2, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_5e

    .line 206
    .restart local v0       #exploreByTouchMode:I
    :cond_237
    const-string v4, "CircleMissedEventWidget"

    const-string v7, "explore by touch mode off"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8b

    .end local v0           #exploreByTouchMode:I
    :cond_240
    move v4, v6

    .line 242
    goto/16 :goto_151
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mWaterlockHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUnlockMode:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;)Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUnlockMode:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mCircleUnlockView:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mIsHoveringUIEnabled:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallList:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgList:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->sendIntent(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmBackground:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvm:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmCount:I

    return v0
.end method

.method private getNumMissedEvent(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;)I
    .registers 7
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 678
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 681
    .local v0, mNM:Landroid/app/NotificationManager;
    if-nez v0, :cond_f

    .line 704
    :cond_e
    :goto_e
    return v1

    .line 684
    :cond_f
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_28

    .line 685
    const-string v2, "com.android.phone"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    .line 692
    :cond_1b
    :goto_1b
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_44

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_44

    .line 696
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_e

    .line 686
    :cond_28
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_37

    .line 687
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->MSG_PKG:Ljava/lang/String;

    const/16 v3, 0x7b

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1b

    .line 688
    :cond_37
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_1b

    .line 689
    const-string v2, "com.android.email"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1b

    .line 697
    :cond_44
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    if-eq p1, v2, :cond_4c

    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_e

    :cond_4c
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_e

    .line 702
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_e
.end method

.method private handleMissedEventUpdate()V
    .registers 1

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->updateMissedEvent()V

    .line 562
    return-void
.end method

.method private sendIntent(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;)V
    .registers 8
    .parameter "notiMode"

    .prologue
    .line 708
    const/4 v0, 0x0

    .line 709
    .local v0, intent:Landroid/app/PendingIntent;
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_31

    .line 710
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget-object v2, v2, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_13

    .line 711
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget-object v0, v2, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    .line 722
    :cond_13
    :goto_13
    if-eqz v0, :cond_30

    .line 724
    :try_start_15
    const-string v2, "CircleMissedEventWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendintent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_30
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_15 .. :try_end_30} :catch_66

    .line 730
    :cond_30
    :goto_30
    return-void

    .line 713
    :cond_31
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    if-eq p1, v2, :cond_39

    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_48

    .line 714
    :cond_39
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget-object v2, v2, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_13

    .line 715
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget-object v0, v2, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_13

    .line 717
    :cond_48
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedVvm:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_13

    .line 718
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.vvmapp.action.LAUNCH_VVM"

    const-string v3, "voicemail"

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 719
    .local v1, tmpIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x4000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_13

    .line 726
    .end local v1           #tmpIntent:Landroid/content/Intent;
    :catch_66
    move-exception v2

    goto :goto_30
.end method

.method private updateMissedEvent()V
    .registers 18

    .prologue
    .line 591
    const/4 v13, 0x0

    .line 592
    .local v13, nCallCount:I
    const/4 v14, 0x0

    .line 593
    .local v14, nMsgCount:I
    const/4 v15, 0x0

    .line 594
    .local v15, nVvmCount:I
    const/4 v7, 0x0

    .line 595
    .local v7, bUpdatedCallCount:Z
    const/4 v8, 0x0

    .line 596
    .local v8, bUpdatedMsgCount:Z
    const/4 v9, 0x0

    .line 598
    .local v9, bUpdatedVvmCount:Z
    sget-object v1, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->getNumMissedEvent(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;)I

    move-result v13

    .line 599
    sget-object v1, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->getNumMissedEvent(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;)I

    move-result v14

    .line 603
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 604
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.sec.badge/apps"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "package"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "class"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "badgecount"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 609
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_7a

    .line 610
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 611
    :goto_4f
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_77

    .line 612
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 613
    .local v16, pkgName:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 614
    .local v12, className:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 618
    .local v10, badgeCount:I
    const-string v1, "com.samsung.vvm"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_100

    const-string v1, "com.samsung.vvm.vvmapp.VVMApplication"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_100

    .line 620
    move v15, v10

    .line 626
    .end local v10           #badgeCount:I
    .end local v12           #className:Ljava/lang/String;
    .end local v16           #pkgName:Ljava/lang/String;
    :cond_77
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 630
    .end local v11           #c:Landroid/database/Cursor;
    :cond_7a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-eq v13, v1, :cond_10a

    .line 631
    const/4 v7, 0x1

    .line 632
    const/16 v1, 0x3e7

    if-le v13, v1, :cond_105

    .line 633
    const/16 v1, 0x3e7

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    .line 643
    :goto_8b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmCount:I

    if-eq v15, v1, :cond_111

    .line 644
    const/4 v9, 0x1

    .line 645
    const/16 v1, 0x3e7

    if-le v14, v1, :cond_10c

    .line 646
    const/16 v1, 0x3e7

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmCount:I

    .line 652
    :goto_9c
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-eq v14, v1, :cond_118

    .line 653
    const/4 v8, 0x1

    .line 654
    const/16 v1, 0x3e7

    if-le v14, v1, :cond_113

    .line 655
    const/16 v1, 0x3e7

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    .line 665
    :goto_ad
    if-nez v8, :cond_b3

    if-nez v7, :cond_b3

    if-eqz v9, :cond_e0

    .line 666
    :cond_b3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    :cond_e0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->getTTSMessage(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 671
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->getTTSMessage(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 673
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->updateMissedIcons()V

    .line 674
    return-void

    .line 623
    .restart local v10       #badgeCount:I
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #className:Ljava/lang/String;
    .restart local v16       #pkgName:Ljava/lang/String;
    :cond_100
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4f

    .line 635
    .end local v10           #badgeCount:I
    .end local v11           #c:Landroid/database/Cursor;
    .end local v12           #className:Ljava/lang/String;
    .end local v16           #pkgName:Ljava/lang/String;
    :cond_105
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    goto :goto_8b

    .line 637
    :cond_10a
    const/4 v7, 0x0

    goto :goto_8b

    .line 648
    :cond_10c
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmCount:I

    goto :goto_9c

    .line 650
    :cond_111
    const/4 v9, 0x0

    goto :goto_9c

    .line 657
    :cond_113
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    goto :goto_ad

    .line 659
    :cond_118
    const/4 v8, 0x0

    goto :goto_ad
.end method

.method private updateMissedIcons()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 525
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-gtz v0, :cond_e

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-gtz v0, :cond_e

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmCount:I

    if-lez v0, :cond_62

    .line 527
    :cond_e
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUpperLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 529
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-lez v0, :cond_41

    .line 530
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 537
    :goto_21
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-lez v0, :cond_4c

    .line 538
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 545
    :goto_2f
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmCount:I

    if-lez v0, :cond_57

    .line 546
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 557
    :goto_3d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->invalidate()V

    .line 558
    return-void

    .line 533
    :cond_41
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_21

    .line 541
    :cond_4c
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2f

    .line 549
    :cond_57
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3d

    .line 553
    :cond_62
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUpperLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3d
.end method


# virtual methods
.method public actionDown()V
    .registers 3

    .prologue
    const v1, 0x1080423

    .line 797
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 798
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 799
    return-void
.end method

.method public actionUp()V
    .registers 3

    .prologue
    const v1, 0x108041f

    .line 803
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 804
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 805
    return-void
.end method

.method public cleanUp()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 567
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 568
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 570
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 571
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 572
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 574
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 575
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 576
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 577
    return-void
.end method

.method public getMissedCallList()Lcom/android/internal/policy/impl/sec/CircleMissedCallList;
    .registers 2

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallList:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;

    return-object v0
.end method

.method public getMissedMsgList()Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;
    .registers 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgList:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;

    return-object v0
.end method

.method public getTTSMessage()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 733
    const-string v0, ""

    .line 735
    .local v0, TTSMessage:Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-lez v1, :cond_29

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-lez v1, :cond_29

    .line 736
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x1040680

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 754
    :goto_28
    return-object v0

    .line 738
    :cond_29
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-le v1, v5, :cond_41

    .line 739
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x104067e

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 741
    :cond_41
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-le v1, v5, :cond_59

    .line 742
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x104067f

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 744
    :cond_59
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-ne v1, v5, :cond_67

    .line 745
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x104067c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 746
    :cond_67
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-ne v1, v5, :cond_75

    .line 747
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x104067d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 749
    :cond_75
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x104067b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_28
.end method

.method public getTTSMessage(Z)Ljava/lang/String;
    .registers 11
    .parameter "isMissedCall"

    .prologue
    const v5, 0x104067c

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 759
    const-string v0, ""

    .line 762
    .local v0, TTSMessage:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mIsTouchExplorationEnabled:Z

    if-nez v3, :cond_46

    .line 763
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v4, 0x1040684

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 768
    .local v2, swipeMsg:Ljava/lang/String;
    :goto_14
    if-eqz p1, :cond_73

    .line 769
    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-le v3, v6, :cond_50

    .line 770
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v5, 0x104067e

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 783
    .end local v0           #TTSMessage:Ljava/lang/String;
    .local v1, TTSMessage:Ljava/lang/String;
    :goto_45
    return-object v1

    .line 765
    .end local v1           #TTSMessage:Ljava/lang/String;
    .end local v2           #swipeMsg:Ljava/lang/String;
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_46
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v4, 0x1040685

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #swipeMsg:Ljava/lang/String;
    goto :goto_14

    .line 772
    :cond_50
    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-ne v3, v6, :cond_c6

    .line 773
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .end local v0           #TTSMessage:Ljava/lang/String;
    .restart local v1       #TTSMessage:Ljava/lang/String;
    goto :goto_45

    .line 776
    .end local v1           #TTSMessage:Ljava/lang/String;
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_73
    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-le v3, v6, :cond_a3

    .line 777
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v5, 0x104067f

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .end local v0           #TTSMessage:Ljava/lang/String;
    .restart local v1       #TTSMessage:Ljava/lang/String;
    goto :goto_45

    .line 779
    .end local v1           #TTSMessage:Ljava/lang/String;
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_a3
    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-ne v3, v6, :cond_c6

    .line 780
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .end local v0           #TTSMessage:Ljava/lang/String;
    .restart local v1       #TTSMessage:Ljava/lang/String;
    goto :goto_45

    .end local v1           #TTSMessage:Ljava/lang/String;
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_c6
    move-object v1, v0

    .line 783
    .end local v0           #TTSMessage:Ljava/lang/String;
    .restart local v1       #TTSMessage:Ljava/lang/String;
    goto/16 :goto_45
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 582
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 587
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->updateMissedEvent()V

    .line 588
    return-void
.end method
