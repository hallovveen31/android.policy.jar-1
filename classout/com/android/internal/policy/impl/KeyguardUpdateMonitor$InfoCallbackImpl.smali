.class public Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoCallbackImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 992
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .registers 1

    .prologue
    .line 1010
    return-void
.end method

.method public onCsSimStateChanged(I)V
    .registers 2
    .parameter "simSlot"

    .prologue
    .line 1023
    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .registers 1

    .prologue
    .line 1016
    return-void
.end method

.method public onDeviceProvisioned()V
    .registers 1

    .prologue
    .line 1013
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .registers 2
    .parameter "phoneState"

    .prologue
    .line 1007
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .registers 4
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 995
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 1001
    return-void
.end method

.method public onRingerModeChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 1004
    return-void
.end method

.method public onTimeChanged()V
    .registers 1

    .prologue
    .line 998
    return-void
.end method

.method public onUserChanged(I)V
    .registers 2
    .parameter "userId"

    .prologue
    .line 1019
    return-void
.end method
