.class Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$3;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1291
    iput-object p1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$3;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 1294
    const-string v0, "InstalledAppDetails"

    const-string v1, "app not found dialog "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$3;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settings_ex/applications/InstalledAppDetails;

    move-result-object v0

    #calls: Lcom/android/settings_ex/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$800(Lcom/android/settings_ex/applications/InstalledAppDetails;ZZ)V

    .line 1296
    return-void
.end method
