.class Lcom/android/settings_ex/MasterClearConfirm$2;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/MasterClearConfirm;->establishFinalConfirmationState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MasterClearConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings_ex/MasterClearConfirm$2;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm$2;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm$2;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->startBackupInfo(Landroid/content/Context;)Z

    move-result v1

    #setter for: Lcom/android/settings_ex/MasterClearConfirm;->mIsBackup:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/MasterClearConfirm;->access$002(Lcom/android/settings_ex/MasterClearConfirm;Z)Z

    .line 98
    return-void
.end method
