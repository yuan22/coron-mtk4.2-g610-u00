.class Lcom/mediatek/lbs/AgpsEpoSettings$2;
.super Ljava/lang/Object;
.source "AgpsEpoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/AgpsEpoSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/AgpsEpoSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/AgpsEpoSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/mediatek/lbs/AgpsEpoSettings$2;->this$0:Lcom/mediatek/lbs/AgpsEpoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialoginterface"
    .parameter "i"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings$2;->this$0:Lcom/mediatek/lbs/AgpsEpoSettings;

    #getter for: Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoEnalberPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/mediatek/lbs/AgpsEpoSettings;->access$100(Lcom/mediatek/lbs/AgpsEpoSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 306
    const-string v0, "AgpsEpoSettings"

    const-string v1, "User Deny Enbale EPO Service"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method