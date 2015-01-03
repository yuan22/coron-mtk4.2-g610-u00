.class public Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;
.super Ljava/lang/Object;
.source "VibrationIntensityPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/VibrationIntensityPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VibrationIntensityStore"
.end annotation


# instance fields
.field public mDataBaseValue:I

.field public mIntensity:I

.field public mOriginalIntensity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;->mIntensity:I

    .line 318
    iput v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;->mOriginalIntensity:I

    .line 319
    iput v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;->mDataBaseValue:I

    return-void
.end method
