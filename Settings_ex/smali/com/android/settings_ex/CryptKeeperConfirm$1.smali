.class Lcom/android/settings_ex/CryptKeeperConfirm$1;
.super Ljava/lang/Object;
.source "CryptKeeperConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CryptKeeperConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/CryptKeeperConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/CryptKeeperConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeperConfirm$1;->this$0:Lcom/android/settings_ex/CryptKeeperConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 97
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const-string v1, "CryptKeeperConfirm"

    const-string v2, "MonkeyRunning"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeperConfirm$1;->this$0:Lcom/android/settings_ex/CryptKeeperConfirm;

    #getter for: Lcom/android/settings_ex/CryptKeeperConfirm;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/CryptKeeperConfirm;->access$000(Lcom/android/settings_ex/CryptKeeperConfirm;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeperConfirm$1;->this$0:Lcom/android/settings_ex/CryptKeeperConfirm;

    #getter for: Lcom/android/settings_ex/CryptKeeperConfirm;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/CryptKeeperConfirm;->access$000(Lcom/android/settings_ex/CryptKeeperConfirm;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "notify.deskclock.reset.alarms"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 107
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeperConfirm$1;->this$0:Lcom/android/settings_ex/CryptKeeperConfirm;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/CryptKeeperConfirm$Blank;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeperConfirm$1;->this$0:Lcom/android/settings_ex/CryptKeeperConfirm;

    invoke-virtual {v1}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeperConfirm$1;->this$0:Lcom/android/settings_ex/CryptKeeperConfirm;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
