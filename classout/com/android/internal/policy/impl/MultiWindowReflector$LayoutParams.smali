.class public Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;
.super Ljava/lang/Object;
.source "MultiWindowReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiWindowReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field static FIELD_NAMES:[Ljava/lang/String;

.field public static TYPE_MULTI_WINDOW_CONTROL_BAR:I

.field public static TYPE_MULTI_WINDOW_EDIT_MODE:I

.field public static TYPE_MULTI_WINDOW_GUIDE_MODE:I

.field public static TYPE_MULTI_WINDOW_TRAY_BAR:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 80
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "TYPE_MULTI_WINDOW_CONTROL_BAR"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "TYPE_MULTI_WINDOW_TRAY_BAR"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "TYPE_MULTI_WINDOW_EDIT_MODE"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "TYPE_MULTI_WINDOW_GUIDE_MODE"

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->FIELD_NAMES:[Ljava/lang/String;

    .line 88
    sget-object v4, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->FIELD_NAMES:[Ljava/lang/String;

    array-length v0, v4

    .line 89
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1d
    if-ge v2, v0, :cond_3d

    .line 91
    :try_start_1f
    const-class v4, Landroid/view/WindowManager$LayoutParams;

    sget-object v5, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 92
    .local v3, src:Ljava/lang/reflect/Field;
    const-class v4, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;

    sget-object v5, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 93
    .local v1, dst:Ljava/lang/reflect/Field;
    invoke-virtual {v3, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v1, v4}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1f .. :try_end_3a} :catch_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_3a} :catch_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_1f .. :try_end_3a} :catch_3e

    .line 89
    .end local v1           #dst:Ljava/lang/reflect/Field;
    .end local v3           #src:Ljava/lang/reflect/Field;
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 99
    :cond_3d
    return-void

    .line 96
    :catch_3e
    move-exception v4

    goto :goto_3a

    .line 95
    :catch_40
    move-exception v4

    goto :goto_3a

    .line 94
    :catch_42
    move-exception v4

    goto :goto_3a
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
