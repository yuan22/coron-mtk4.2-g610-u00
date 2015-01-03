.class Lcom/android/settings_ex/SystemUpgradeCheck$1;
.super Ljava/lang/Object;
.source "SystemUpgradeCheck.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SystemUpgradeCheck;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SystemUpgradeCheck;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SystemUpgradeCheck;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/settings_ex/SystemUpgradeCheck$1;->this$0:Lcom/android/settings_ex/SystemUpgradeCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/SystemUpgradeCheck$1;->this$0:Lcom/android/settings_ex/SystemUpgradeCheck;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 100
    return-void
.end method
