.class Lcom/android/settings_ex/MediaFormat$1;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/MediaFormat;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MediaFormat;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings_ex/MediaFormat$1;->this$0:Lcom/android/settings_ex/MediaFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 77
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/MediaFormat$1;->this$0:Lcom/android/settings_ex/MediaFormat;

    #calls: Lcom/android/settings_ex/MediaFormat;->getMtpStatus()Z
    invoke-static {v1}, Lcom/android/settings_ex/MediaFormat;->access$000(Lcom/android/settings_ex/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/android/settings_ex/MediaFormat$1;->this$0:Lcom/android/settings_ex/MediaFormat;

    iget-object v2, p0, Lcom/android/settings_ex/MediaFormat$1;->this$0:Lcom/android/settings_ex/MediaFormat;

    const v3, 0x7f0b000b

    #calls: Lcom/android/settings_ex/MediaFormat;->getVolumeString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/settings_ex/MediaFormat;->access$100(Lcom/android/settings_ex/MediaFormat;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 84
    iget-object v1, p0, Lcom/android/settings_ex/MediaFormat$1;->this$0:Lcom/android/settings_ex/MediaFormat;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 89
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/settings_ex/MediaFormat$1;->this$0:Lcom/android/settings_ex/MediaFormat;

    #getter for: Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v2}, Lcom/android/settings_ex/MediaFormat;->access$200(Lcom/android/settings_ex/MediaFormat;)Landroid/os/storage/StorageVolume;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lcom/android/settings_ex/MediaFormat$1;->this$0:Lcom/android/settings_ex/MediaFormat;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 91
    iget-object v1, p0, Lcom/android/settings_ex/MediaFormat$1;->this$0:Lcom/android/settings_ex/MediaFormat;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
