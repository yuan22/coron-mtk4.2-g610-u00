.class Lcom/android/settings_ex/DrmSettings$1;
.super Ljava/lang/Object;
.source "DrmSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DrmSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DrmSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DrmSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings_ex/DrmSettings$1;->this$0:Lcom/android/settings_ex/DrmSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-static {}, Lcom/android/settings_ex/DrmSettings;->access$000()Landroid/drm/DrmManagerClient;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    invoke-static {}, Lcom/android/settings_ex/DrmSettings;->access$000()Landroid/drm/DrmManagerClient;

    move-result-object v1

    invoke-virtual {v1}, Landroid/drm/DrmManagerClient;->removeAllRights()I

    move-result v0

    .line 84
    .local v0, result:I
    invoke-static {}, Lcom/android/settings_ex/DrmSettings;->access$000()Landroid/drm/DrmManagerClient;

    if-nez v0, :cond_1

    .line 85
    iget-object v1, p0, Lcom/android/settings_ex/DrmSettings$1;->this$0:Lcom/android/settings_ex/DrmSettings;

    #getter for: Lcom/android/settings_ex/DrmSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/DrmSettings;->access$100(Lcom/android/settings_ex/DrmSettings;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b00cc

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 88
    invoke-static {}, Lcom/android/settings_ex/DrmSettings;->access$200()Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 92
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings_ex/DrmSettings;->access$002(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;

    .line 94
    .end local v0           #result:I
    :cond_0
    return-void

    .line 90
    .restart local v0       #result:I
    :cond_1
    const-string v1, "DrmSettings"

    const-string v2, "removeAllRights fail!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
