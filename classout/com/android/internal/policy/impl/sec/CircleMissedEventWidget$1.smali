.class Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$1;
.super Landroid/os/Handler;
.source "CircleMissedEventWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)V
    .registers 2
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 112
    :goto_5
    return-void

    .line 109
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    #calls: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->handleMissedEventUpdate()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->access$000(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)V

    goto :goto_5

    .line 107
    :pswitch_data_c
    .packed-switch 0x12c2
        :pswitch_6
    .end packed-switch
.end method
