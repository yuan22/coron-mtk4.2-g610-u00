.class public Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmRestrictFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2785
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 2787
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2792
    :goto_0
    return-void

    .line 2789
    :cond_0
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;

    invoke-direct {v0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;-><init>()V

    .line 2790
    .local v0, dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2791
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmRestrict"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 2796
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2798
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2800
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->access$4900()Lcom/android/settings_ex/ext/ISettingsMiscExt;

    move-result-object v4

    const v5, 0x7f0b08df

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "bgDataDialogTitle"

    invoke-interface {v4, v5, v6}, Lcom/android/settings_ex/ext/ISettingsMiscExt;->getDataUsageBackgroundStrByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2802
    .local v3, title:Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2804
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->access$4900()Lcom/android/settings_ex/ext/ISettingsMiscExt;

    move-result-object v4

    const v5, 0x7f0b08e0

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "bgDataMenuDialogMessage"

    invoke-interface {v4, v5, v6}, Lcom/android/settings_ex/ext/ISettingsMiscExt;->getDataUsageBackgroundStrByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2806
    .local v2, message:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2807
    const v4, 0x7f0b08e1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2812
    :goto_0
    const v4, 0x104000a

    new-instance v5, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment$1;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment$1;-><init>(Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2821
    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2823
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 2809
    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
