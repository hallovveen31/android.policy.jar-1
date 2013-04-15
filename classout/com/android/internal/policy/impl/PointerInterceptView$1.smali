.class Lcom/android/internal/policy/impl/PointerInterceptView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PointerInterceptView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PointerInterceptView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PointerInterceptView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PointerInterceptView;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "e"

    .prologue
    const-wide/16 v4, 0xbb8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanded:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$000(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 198
    :cond_c
    :goto_c
    return v2

    .line 169
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarHeight:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$700(Lcom/android/internal/policy/impl/PointerInterceptView;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_61

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$300(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$300(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointerInterceptView;->mAnimatingHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #setter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBar:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$102(Lcom/android/internal/policy/impl/PointerInterceptView;Z)Z

    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$200(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanding:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$400(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 176
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mIsStatusBarExpandEnabled:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$500(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 177
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$300(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c

    .line 184
    :cond_61
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$200(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 186
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanding:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$400(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 187
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PointerInterceptView;->sendCallbackFunc(Z)V

    goto :goto_c

    .line 190
    :cond_77
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanded:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$000(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 191
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$300(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 192
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$300(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_c

    .line 194
    :cond_9b
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBar:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$100(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$200(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #setter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBar:Z
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$102(Lcom/android/internal/policy/impl/PointerInterceptView;Z)Z

    goto/16 :goto_c
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const v1, 0x44bb8000

    const/4 v4, 0x1

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanded:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$000(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 114
    :cond_c
    :goto_c
    return v4

    .line 105
    :cond_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBar:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$100(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-ne v0, v4, :cond_c

    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$200(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 107
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_c

    cmpl-float v0, p4, v1

    if-ltz v0, :cond_c

    .line 108
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/PointerInterceptView;->sendCallbackFunc(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #setter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z
    invoke-static {v0, v4}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$202(Lcom/android/internal/policy/impl/PointerInterceptView;Z)Z

    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$300(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$300(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x1

    .line 129
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanded:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$000(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 152
    :cond_9
    :goto_9
    return v4

    .line 132
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBar:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$100(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$200(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanding:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$400(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/PointerInterceptView;->sendCallbackFunc(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mIsStatusBarExpandEnabled:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$500(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #setter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanding:Z
    invoke-static {v0, v4}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$402(Lcom/android/internal/policy/impl/PointerInterceptView;Z)Z

    goto :goto_9

    .line 142
    :cond_35
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$300(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$300(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    .line 147
    :cond_52
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mIsStatusBarWindow:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$600(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$300(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PointerInterceptView;->sendCallbackFunc(Z)V

    goto :goto_9
.end method
