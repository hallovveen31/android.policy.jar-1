.class Lcom/android/internal/policy/impl/sec/CircleLockScreen$2;
.super Ljava/lang/Object;
.source "CircleLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/CircleLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 617
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCircleUnlocked(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1800(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 622
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1800(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 624
    :cond_11
    return-void
.end method
