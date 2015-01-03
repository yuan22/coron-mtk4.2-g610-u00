.class Lcom/android/settings_ex/ApnEditor$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ApnEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 197
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    const-string v3, "state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    #setter for: Lcom/android/settings_ex/ApnEditor;->mAirplaneModeEnabled:Z
    invoke-static {v2, v3}, Lcom/android/settings_ex/ApnEditor;->access$002(Lcom/android/settings_ex/ApnEditor;Z)Z

    .line 200
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    #getter for: Lcom/android/settings_ex/ApnEditor;->mAirplaneModeEnabled:Z
    invoke-static {v2}, Lcom/android/settings_ex/ApnEditor;->access$000(Lcom/android/settings_ex/ApnEditor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    const-string v2, "ssr"

    const-string v3, "receiver: ACTION_AIRPLANE_MODE_CHANGED in ApnEditor"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    #calls: Lcom/android/settings_ex/ApnEditor;->radioOffExit()V
    invoke-static {v2}, Lcom/android/settings_ex/ApnEditor;->access$100(Lcom/android/settings_ex/ApnEditor;)V

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const-string v2, "com.android.mms.transaction.START"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    const-string v2, "ssr"

    const-string v3, "receiver: TRANSACTION_START in ApnEditor"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    #setter for: Lcom/android/settings_ex/ApnEditor;->mNotInMmsTransaction:Z
    invoke-static {v2, v4}, Lcom/android/settings_ex/ApnEditor;->access$202(Lcom/android/settings_ex/ApnEditor;Z)Z

    .line 207
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_0

    .line 208
    :cond_2
    const-string v2, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 209
    const-string v2, "ssr"

    const-string v3, "receiver: TRANSACTION_STOP in ApnEditor"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    #setter for: Lcom/android/settings_ex/ApnEditor;->mNotInMmsTransaction:Z
    invoke-static {v2, v5}, Lcom/android/settings_ex/ApnEditor;->access$202(Lcom/android/settings_ex/ApnEditor;Z)Z

    .line 211
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    #calls: Lcom/android/settings_ex/ApnEditor;->setScreenEnabledStatus()V
    invoke-static {v2}, Lcom/android/settings_ex/ApnEditor;->access$300(Lcom/android/settings_ex/ApnEditor;)V

    .line 213
    const-string v2, "tethering"

    iget-object v3, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    #getter for: Lcom/android/settings_ex/ApnEditor;->mApnTypeList:Lcom/android/settings_ex/ApnTypePreference;
    invoke-static {v3}, Lcom/android/settings_ex/ApnEditor;->access$400(Lcom/android/settings_ex/ApnEditor;)Lcom/android/settings_ex/ApnTypePreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_ex/ApnTypePreference;->getTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    iget-object v2, v2, Lcom/android/settings_ex/ApnEditor;->mExt:Lcom/android/settings_ex/ext/IApnEditorExt;

    iget-object v3, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    #getter for: Lcom/android/settings_ex/ApnEditor;->mApnTypeList:Lcom/android/settings_ex/ApnTypePreference;
    invoke-static {v3}, Lcom/android/settings_ex/ApnEditor;->access$400(Lcom/android/settings_ex/ApnEditor;)Lcom/android/settings_ex/ApnTypePreference;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settings_ex/ext/IApnEditorExt;->setPreferenceState(Landroid/preference/DialogPreference;)V

    goto :goto_0

    .line 216
    :cond_3
    const-string v2, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 217
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    const-string v3, "mode"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/settings_ex/ApnEditor;->mDualSimMode:I
    invoke-static {v2, v3}, Lcom/android/settings_ex/ApnEditor;->access$502(Lcom/android/settings_ex/ApnEditor;I)I

    .line 218
    invoke-static {}, Lcom/android/settings_ex/ApnEditor;->access$600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receiver, new dual sim mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    #getter for: Lcom/android/settings_ex/ApnEditor;->mDualSimMode:I
    invoke-static {v4}, Lcom/android/settings_ex/ApnEditor;->access$500(Lcom/android/settings_ex/ApnEditor;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    #getter for: Lcom/android/settings_ex/ApnEditor;->mDualSimMode:I
    invoke-static {v2}, Lcom/android/settings_ex/ApnEditor;->access$500(Lcom/android/settings_ex/ApnEditor;)I

    move-result v2

    if-nez v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    #calls: Lcom/android/settings_ex/ApnEditor;->radioOffExit()V
    invoke-static {v2}, Lcom/android/settings_ex/ApnEditor;->access$100(Lcom/android/settings_ex/ApnEditor;)V

    goto/16 :goto_0

    .line 222
    :cond_4
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 224
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    #getter for: Lcom/android/settings_ex/ApnEditor;->mSpn:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/ApnEditor;->access$700(Lcom/android/settings_ex/ApnEditor;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    #getter for: Lcom/android/settings_ex/ApnEditor;->mSpn:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/ApnEditor;->access$700(Lcom/android/settings_ex/ApnEditor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 225
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    #calls: Lcom/android/settings_ex/ApnEditor;->setSpn()V
    invoke-static {v2}, Lcom/android/settings_ex/ApnEditor;->access$800(Lcom/android/settings_ex/ApnEditor;)V

    .line 227
    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    #getter for: Lcom/android/settings_ex/ApnEditor;->mIMSI:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/ApnEditor;->access$900(Lcom/android/settings_ex/ApnEditor;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    #getter for: Lcom/android/settings_ex/ApnEditor;->mIMSI:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/ApnEditor;->access$900(Lcom/android/settings_ex/ApnEditor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 228
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    #calls: Lcom/android/settings_ex/ApnEditor;->setIMSI()V
    invoke-static {v2}, Lcom/android/settings_ex/ApnEditor;->access$1000(Lcom/android/settings_ex/ApnEditor;)V

    .line 230
    :cond_8
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    #getter for: Lcom/android/settings_ex/ApnEditor;->mPnn:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/ApnEditor;->access$1100(Lcom/android/settings_ex/ApnEditor;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    #getter for: Lcom/android/settings_ex/ApnEditor;->mPnn:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/ApnEditor;->access$1100(Lcom/android/settings_ex/ApnEditor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    :cond_9
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    #calls: Lcom/android/settings_ex/ApnEditor;->setPnn()V
    invoke-static {v2}, Lcom/android/settings_ex/ApnEditor;->access$1200(Lcom/android/settings_ex/ApnEditor;)V

    goto/16 :goto_0

    .line 234
    :cond_a
    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    invoke-static {v2}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 237
    .local v1, temp:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_b

    .line 238
    invoke-static {}, Lcom/android/settings_ex/ApnEditor;->access$600()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Activity finished"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 240
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 241
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget v2, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iget-object v3, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    #getter for: Lcom/android/settings_ex/ApnEditor;->mSimId:I
    invoke-static {v3}, Lcom/android/settings_ex/ApnEditor;->access$1300(Lcom/android/settings_ex/ApnEditor;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 242
    invoke-static {}, Lcom/android/settings_ex/ApnEditor;->access$600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "temp.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Activity finished"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method
