.class final Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PointerInterceptInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .parameter
    .parameter "inputChannel"
    .parameter "looper"

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 567
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 568
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 12
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    .line 572
    const/4 v4, 0x0

    .line 573
    .local v4, handled:Z
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 574
    .local v3, focusedWindow:Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v3, :cond_7b

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 576
    .local v1, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_c
    if-eqz v1, :cond_7d

    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7d0

    if-ne v8, v9, :cond_7d

    const/4 v6, 0x1

    .line 579
    .local v6, isStatusBarWindow:Z
    :goto_15
    const/4 v5, 0x1

    .line 580
    .local v5, isStatusBarExpandEnabled:Z
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v8, :cond_2a

    .line 581
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v9, "statusbar"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 584
    :cond_2a
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v8, :cond_38

    .line 586
    :try_start_30
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v8}, Lcom/android/internal/statusbar/IStatusBarService;->isStatusBarExpandEnabled()Z
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_37} :catch_7f

    move-result v5

    .line 595
    :cond_38
    :goto_38
    if-eqz v1, :cond_77

    :try_start_3a
    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v7, v7, 0x10

    if-nez v7, :cond_77

    .line 596
    instance-of v7, p1, Landroid/view/MotionEvent;

    if-eqz v7, :cond_77

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_77

    .line 598
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerInterceptView:Lcom/android/internal/policy/impl/PointerInterceptView;

    if-nez v7, :cond_5f

    .line 599
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver$1;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v9, v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v8, p0, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;Landroid/content/Context;)V

    iput-object v8, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerInterceptView:Lcom/android/internal/policy/impl/PointerInterceptView;

    .line 612
    :cond_5f
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v8, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_64
    .catchall {:try_start_3a .. :try_end_64} :catchall_90

    .line 613
    :try_start_64
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v7, :cond_75

    .line 614
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v9, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerInterceptView:Lcom/android/internal/policy/impl/PointerInterceptView;

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v7, v0

    invoke-virtual {v9, v7, v6, v5}, Lcom/android/internal/policy/impl/PointerInterceptView;->addPointerEvent(Landroid/view/MotionEvent;ZZ)V

    .line 617
    :cond_75
    const/4 v4, 0x1

    .line 618
    monitor-exit v8
    :try_end_77
    .catchall {:try_start_64 .. :try_end_77} :catchall_8d

    .line 622
    :cond_77
    invoke-virtual {p0, p1, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 624
    return-void

    .end local v1           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v5           #isStatusBarExpandEnabled:Z
    .end local v6           #isStatusBarWindow:Z
    :cond_7b
    move-object v1, v7

    .line 574
    goto :goto_c

    .line 576
    .restart local v1       #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_7d
    const/4 v6, 0x0

    goto :goto_15

    .line 587
    .restart local v5       #isStatusBarExpandEnabled:Z
    .restart local v6       #isStatusBarWindow:Z
    :catch_7f
    move-exception v2

    .line 588
    .local v2, e:Landroid/os/RemoteException;
    const-string v8, "WindowManager"

    const-string v9, "StatusBarService RemoteException"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object v7, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 590
    const/4 v5, 0x1

    goto :goto_38

    .line 618
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_8d
    move-exception v7

    :try_start_8e
    monitor-exit v8
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    :try_start_8f
    throw v7
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_90

    .line 622
    :catchall_90
    move-exception v7

    invoke-virtual {p0, p1, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v7
.end method
