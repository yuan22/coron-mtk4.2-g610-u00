.class Lcom/android/settings_ex/ApnEditor$2;
.super Landroid/telephony/PhoneStateListener;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ApnEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/settings_ex/ApnEditor$2;->this$0:Lcom/android/settings_ex/ApnEditor;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 256
    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor$2;->this$0:Lcom/android/settings_ex/ApnEditor;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 257
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$2;->this$0:Lcom/android/settings_ex/ApnEditor;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #setter for: Lcom/android/settings_ex/ApnEditor;->mIsCallStateIdle:Z
    invoke-static {v2, v1}, Lcom/android/settings_ex/ApnEditor;->access$1402(Lcom/android/settings_ex/ApnEditor;Z)Z

    .line 258
    return-void

    .line 257
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
