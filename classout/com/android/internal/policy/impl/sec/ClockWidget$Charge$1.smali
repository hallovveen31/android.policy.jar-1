.class Lcom/android/internal/policy/impl/sec/ClockWidget$Charge$1;
.super Landroid/os/Handler;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;)V
    .registers 2
    .parameter

    .prologue
    .line 1575
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge$1;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 1578
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2a

    .line 1587
    :cond_5
    :goto_5
    return-void

    .line 1580
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge$1;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;

    #calls: Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->getCMASCount()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->access$2300(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;)V

    .line 1581
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge$1;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;

    #getter for: Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mPrevShowingCMASText:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->access$2400(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge$1;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;

    #getter for: Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mShowingCMASText:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->access$2500(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;)Z

    move-result v1

    if-eq v0, v1, :cond_5

    .line 1582
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge$1;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;

    #calls: Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->updateChargingInfo()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->access$2600(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;)V

    .line 1583
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge$1;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge$1;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;

    #getter for: Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mShowingCMASText:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->access$2500(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;)Z

    move-result v1

    #setter for: Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mPrevShowingCMASText:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->access$2402(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;Z)Z

    goto :goto_5

    .line 1578
    :pswitch_data_2a
    .packed-switch 0x12c2
        :pswitch_6
    .end packed-switch
.end method
