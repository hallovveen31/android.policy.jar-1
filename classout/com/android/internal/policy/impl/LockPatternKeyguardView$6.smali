.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;
.super Ljava/lang/Object;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showWipeDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .registers 2
    .parameter

    .prologue
    .line 1794
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->performWipeout()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$3000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 1798
    return-void
.end method
