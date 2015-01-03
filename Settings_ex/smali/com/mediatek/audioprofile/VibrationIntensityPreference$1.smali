.class Lcom/mediatek/audioprofile/VibrationIntensityPreference$1;
.super Lcom/mediatek/common/audioprofile/AudioProfileListener;
.source "VibrationIntensityPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/VibrationIntensityPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/VibrationIntensityPreference;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/VibrationIntensityPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$1;->this$0:Lcom/mediatek/audioprofile/VibrationIntensityPreference;

    invoke-direct {p0}, Lcom/mediatek/common/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioProfileChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "profileKey"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/mediatek/common/audioprofile/AudioProfileListener;->onAudioProfileChanged(Ljava/lang/String;)V

    .line 109
    const-string v0, "Settings/VibrationIntensityPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioPerfileChanged:key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$1;->this$0:Lcom/mediatek/audioprofile/VibrationIntensityPreference;

    invoke-virtual {v0, p1}, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->setProfile(Ljava/lang/String;)V

    .line 111
    return-void
.end method
