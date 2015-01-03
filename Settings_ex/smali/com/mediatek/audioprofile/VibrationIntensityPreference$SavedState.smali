.class Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "VibrationIntensityPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/VibrationIntensityPreference;
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
            "Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mVibrationIntensityStore:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 400
    new-instance v0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState$1;

    invoke-direct {v0}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "source"

    .prologue
    .line 336
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 337
    invoke-static {}, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->access$000()[I

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;

    iput-object v1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState;->mVibrationIntensityStore:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;

    .line 338
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->access$000()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState;->mVibrationIntensityStore:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;

    new-instance v2, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;

    invoke-direct {v2}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;-><init>()V

    aput-object v2, v1, v0

    .line 340
    iget-object v1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState;->mVibrationIntensityStore:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;->mIntensity:I

    .line 341
    iget-object v1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState;->mVibrationIntensityStore:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;->mOriginalIntensity:I

    .line 342
    iget-object v1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState;->mVibrationIntensityStore:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;->mDataBaseValue:I

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 389
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 390
    return-void
.end method


# virtual methods
.method getVibrationIntensityStore(I)[Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;
    .locals 3
    .parameter "count"

    .prologue
    .line 372
    iget-object v1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState;->mVibrationIntensityStore:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState;->mVibrationIntensityStore:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;

    array-length v1, v1

    if-eq v1, p1, :cond_1

    .line 373
    :cond_0
    new-array v1, p1, [Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;

    iput-object v1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState;->mVibrationIntensityStore:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;

    .line 374
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState;->mVibrationIntensityStore:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;

    new-instance v2, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;

    invoke-direct {v2}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;-><init>()V

    aput-object v2, v1, v0

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState;->mVibrationIntensityStore:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 356
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 357
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->access$000()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState;->mVibrationIntensityStore:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;->mIntensity:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget-object v1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState;->mVibrationIntensityStore:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;->mOriginalIntensity:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget-object v1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState;->mVibrationIntensityStore:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;->mDataBaseValue:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_0
    return-void
.end method
