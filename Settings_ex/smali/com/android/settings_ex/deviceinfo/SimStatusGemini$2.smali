.class Lcom/android/settings_ex/deviceinfo/SimStatusGemini$2;
.super Landroid/telephony/PhoneStateListener;
.source "SimStatusGemini.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/SimStatusGemini;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/SimStatusGemini;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatusGemini;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 1
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatusGemini;

    #calls: Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->updateDataState()V
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->access$400(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatusGemini;

    #calls: Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->updateNetworkType()V
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->access$500(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;)V

    .line 126
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getMySimId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatusGemini;

    #getter for: Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSimId:I
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->access$600(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatusGemini;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    #setter for: Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mServiceState:I
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->access$802(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;I)I

    .line 142
    const-string v0, "Gemini_SimStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceStateChanged mSimId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatusGemini;

    #getter for: Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSimId:I
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->access$600(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mServiceState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatusGemini;

    #getter for: Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mServiceState:I
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->access$800(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatusGemini;

    #calls: Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->updateServiceState(Landroid/telephony/ServiceState;)V
    invoke-static {v0, p1}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->access$900(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;Landroid/telephony/ServiceState;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatusGemini;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->updateSignalStrength()V

    .line 147
    :cond_0
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3
    .parameter "signalStrength"

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getMySimId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatusGemini;

    #getter for: Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSimId:I
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->access$600(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatusGemini;

    #setter for: Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v0, p1}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->access$702(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 132
    const-string v0, "Gemini_SimStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SignalStrengthsChanged mSimId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatusGemini;

    #getter for: Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSimId:I
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->access$600(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSignalStrength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatusGemini;

    #getter for: Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->access$700(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;)Landroid/telephony/SignalStrength;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatusGemini;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->updateSignalStrength()V

    .line 136
    :cond_0
    return-void
.end method
