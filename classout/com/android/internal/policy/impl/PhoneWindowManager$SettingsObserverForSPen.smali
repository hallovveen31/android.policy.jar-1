.class Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserverForSPen;
.super Landroid/database/ContentObserver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserverForSPen"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "handler"

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserverForSPen;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 1005
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1006
    return-void
.end method


# virtual methods
.method observe()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1009
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserverForSPen;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1010
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "lock_screen_quick_note"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1011
    const-string v1, "haptic_feedback_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1012
    return-void
.end method

.method public onChange(Z)V
    .registers 8
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1014
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserverForSPen;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_quick_note"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_33

    move v0, v2

    .line 1015
    .local v0, SNoteEnable:Z
    :goto_13
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserverForSPen;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPenGestureView:Lcom/android/internal/widget/SPenGestureView;

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/SPenGestureView;->setDoubleTapStateBySettingMenu(Z)V

    .line 1017
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserverForSPen;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "haptic_feedback_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_35

    move v1, v2

    .line 1018
    .local v1, bHapticEnabled:Z
    :goto_2b
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserverForSPen;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPenGestureView:Lcom/android/internal/widget/SPenGestureView;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/SPenGestureView;->setHapticEnabled(Z)V

    .line 1019
    return-void

    .end local v0           #SNoteEnable:Z
    .end local v1           #bHapticEnabled:Z
    :cond_33
    move v0, v3

    .line 1014
    goto :goto_13

    .restart local v0       #SNoteEnable:Z
    :cond_35
    move v1, v3

    .line 1017
    goto :goto_2b
.end method
