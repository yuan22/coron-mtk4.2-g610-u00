.class Lcom/android/settings_ex/MediaFormat$2;
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
    .line 131
    iput-object p1, p0, Lcom/android/settings_ex/MediaFormat$2;->this$0:Lcom/android/settings_ex/MediaFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat$2;->this$0:Lcom/android/settings_ex/MediaFormat;

    #calls: Lcom/android/settings_ex/MediaFormat;->getMtpStatus()Z
    invoke-static {v0}, Lcom/android/settings_ex/MediaFormat;->access$000(Lcom/android/settings_ex/MediaFormat;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat$2;->this$0:Lcom/android/settings_ex/MediaFormat;

    iget-object v1, p0, Lcom/android/settings_ex/MediaFormat$2;->this$0:Lcom/android/settings_ex/MediaFormat;

    const v2, 0x7f0b000b

    #calls: Lcom/android/settings_ex/MediaFormat;->getVolumeString(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings_ex/MediaFormat;->access$100(Lcom/android/settings_ex/MediaFormat;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat$2;->this$0:Lcom/android/settings_ex/MediaFormat;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat$2;->this$0:Lcom/android/settings_ex/MediaFormat;

    const/16 v1, 0x37

    #calls: Lcom/android/settings_ex/MediaFormat;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/MediaFormat;->access$300(Lcom/android/settings_ex/MediaFormat;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat$2;->this$0:Lcom/android/settings_ex/MediaFormat;

    #calls: Lcom/android/settings_ex/MediaFormat;->establishFinalConfirmationState()V
    invoke-static {v0}, Lcom/android/settings_ex/MediaFormat;->access$400(Lcom/android/settings_ex/MediaFormat;)V

    goto :goto_0
.end method
