.class Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2705
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment$1;->this$0:Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 2708
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment$1;->this$0:Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/DataUsageSummary;

    .line 2710
    .local v1, target:Lcom/android/settings_ex/DataUsageSummary;
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment$1;->this$0:Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v0

    .line 2711
    .local v0, slotId:I
    if-eqz v1, :cond_0

    .line 2713
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 2714
    #calls: Lcom/android/settings_ex/DataUsageSummary;->setMobileDataEnabled(IZ)V
    invoke-static {v1, v0, v3}, Lcom/android/settings_ex/DataUsageSummary;->access$4600(Lcom/android/settings_ex/DataUsageSummary;IZ)V

    .line 2720
    :cond_0
    :goto_0
    return-void

    .line 2716
    :cond_1
    #calls: Lcom/android/settings_ex/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v1, v3}, Lcom/android/settings_ex/DataUsageSummary;->access$2200(Lcom/android/settings_ex/DataUsageSummary;Z)V

    goto :goto_0
.end method
