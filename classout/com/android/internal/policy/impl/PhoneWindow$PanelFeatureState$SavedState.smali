.class Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field featureId:I

.field isInExpandedMode:Z

.field isOpen:Z

.field menuState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 3915
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState$1;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 3882
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 3882
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;-><init>()V

    return-void
.end method

.method static synthetic access$2800(Landroid/os/Parcel;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3882
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->readFromParcel(Landroid/os/Parcel;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;
    .registers 5
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3903
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;-><init>()V

    .line 3904
    .local v0, savedState:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->featureId:I

    .line 3905
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_29

    move v1, v2

    :goto_14
    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    .line 3906
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2b

    :goto_1c
    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->isInExpandedMode:Z

    .line 3908
    iget-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v1, :cond_28

    .line 3909
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 3912
    :cond_28
    return-object v0

    :cond_29
    move v1, v3

    .line 3905
    goto :goto_14

    :cond_2b
    move v2, v3

    .line 3906
    goto :goto_1c
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 3889
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3893
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->featureId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3894
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v0, :cond_20

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3895
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->isInExpandedMode:Z

    if-eqz v0, :cond_22

    :goto_13
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3897
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v0, :cond_1f

    .line 3898
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3900
    :cond_1f
    return-void

    :cond_20
    move v0, v2

    .line 3894
    goto :goto_c

    :cond_22
    move v1, v2

    .line 3895
    goto :goto_13
.end method
