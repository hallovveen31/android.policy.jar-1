.class Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$1;
.super Landroid/os/Handler;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)V
    .registers 2
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$1;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 313
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 319
    :goto_5
    return-void

    .line 316
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$1;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->updateWeatherInfo()V

    goto :goto_5

    .line 313
    :pswitch_data_c
    .packed-switch 0x12c0
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
