.class Lcom/android/internal/policy/impl/sec/SignatureLockScreen$ReorderLayout;
.super Landroid/widget/FrameLayout;
.source "SignatureLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SignatureLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReorderLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 537
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 540
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$ReorderLayout;->setChildrenDrawingOrderEnabled(Z)V

    .line 541
    return-void
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .registers 6
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 545
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$ReorderLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v0

    .line 550
    .local v0, id:I
    move v1, p2

    .line 552
    .local v1, order:I
    const v2, 0x1020389

    if-ne v2, v0, :cond_11

    .line 553
    add-int/lit8 v1, p1, -0x2

    .line 558
    :cond_10
    :goto_10
    return v1

    .line 554
    :cond_11
    const v2, 0x1020388

    if-ne v2, v0, :cond_10

    .line 555
    add-int/lit8 v1, p1, -0x1

    goto :goto_10
.end method
