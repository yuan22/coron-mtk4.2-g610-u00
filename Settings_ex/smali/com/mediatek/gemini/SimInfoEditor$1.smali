.class Lcom/mediatek/gemini/SimInfoEditor$1;
.super Landroid/content/BroadcastReceiver;
.source "SimInfoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/SimInfoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/SimInfoEditor;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SimInfoEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mediatek/gemini/SimInfoEditor$1;->this$0:Lcom/mediatek/gemini/SimInfoEditor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor$1;->this$0:Lcom/mediatek/gemini/SimInfoEditor;

    #calls: Lcom/mediatek/gemini/SimInfoEditor;->updateStatusUiState()V
    invoke-static {v2}, Lcom/mediatek/gemini/SimInfoEditor;->access$000(Lcom/mediatek/gemini/SimInfoEditor;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    const-string v2, "SimInfoEditor"

    const-string v3, "receive ACTION_SIM_INFO_UPDATE"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor$1;->this$0:Lcom/mediatek/gemini/SimInfoEditor;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 69
    .local v1, simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-eqz v1, :cond_0

    .line 70
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 72
    const-string v2, "SimInfoEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hot swap_simList.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor$1;->this$0:Lcom/mediatek/gemini/SimInfoEditor;

    #calls: Lcom/mediatek/gemini/SimInfoEditor;->goBackSettings()V
    invoke-static {v2}, Lcom/mediatek/gemini/SimInfoEditor;->access$100(Lcom/mediatek/gemini/SimInfoEditor;)V

    goto :goto_0

    .line 74
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 75
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget-wide v2, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    iget-object v4, p0, Lcom/mediatek/gemini/SimInfoEditor$1;->this$0:Lcom/mediatek/gemini/SimInfoEditor;

    #getter for: Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J
    invoke-static {v4}, Lcom/mediatek/gemini/SimInfoEditor;->access$200(Lcom/mediatek/gemini/SimInfoEditor;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor$1;->this$0:Lcom/mediatek/gemini/SimInfoEditor;

    invoke-virtual {v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    goto :goto_0
.end method
