.class Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$1;
.super Ljava/lang/Object;
.source "CircleLockScreenMotion.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .registers 4
    .parameter "motionEvent"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->DBG:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->access$100(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Here comes a motion event"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_13
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    sparse-switch v0, :sswitch_data_3e

    .line 87
    :goto_1a
    return-void

    .line 76
    :sswitch_1b
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->DBG:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->access$100(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TILT_TO_UNLOCK"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->access$400(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$1$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$1$1;-><init>(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1a

    .line 73
    nop

    :sswitch_data_3e
    .sparse-switch
        0x4b -> :sswitch_1b
        0x61 -> :sswitch_1b
    .end sparse-switch
.end method
