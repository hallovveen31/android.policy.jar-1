.class public Lcom/android/internal/policy/impl/sec/CircleUnlockView$QuintEaseInOut;
.super Ljava/lang/Object;
.source "CircleUnlockView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/CircleUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QuintEaseInOut"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)V
    .registers 2
    .parameter

    .prologue
    .line 763
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView$QuintEaseInOut;->this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 764
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/sec/CircleUnlockView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 766
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView$QuintEaseInOut;->this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 767
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 6
    .parameter "input"

    .prologue
    const/high16 v3, 0x4000

    const/4 v2, 0x0

    const/high16 v1, 0x3f00

    .line 770
    div-float/2addr p1, v1

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gez v0, :cond_14

    .line 771
    mul-float v0, v1, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v2

    .line 773
    :goto_13
    return v0

    :cond_14
    sub-float/2addr p1, v3

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    goto :goto_13
.end method
