.class Lcom/android/settings_ex/deviceinfo/Memory$10;
.super Ljava/lang/Thread;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/Memory;->manuleSwitch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/Memory;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/Memory;Landroid/os/storage/IMountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 903
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/Memory$10;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/Memory$10;->val$mountService:Landroid/os/storage/IMountService;

    iput-object p3, p0, Lcom/android/settings_ex/deviceinfo/Memory$10;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 907
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory$10;->val$mountService:Landroid/os/storage/IMountService;

    if-eqz v1, :cond_1

    .line 908
    const-string v1, "MemorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manuleSwitch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory$10;->val$path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory$10;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory$10;->val$path:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->manuleSwitch(Ljava/lang/String;)V

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 911
    :cond_1
    const-string v1, "MemorySettings"

    const-string v2, "Mount service is null, can\'t manuleSwitch"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory$10;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mManulSwaping:Z
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/Memory;->access$400(Lcom/android/settings_ex/deviceinfo/Memory;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 913
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory$10;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/Memory;->access$500(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 914
    const-string v1, "MemorySettings"

    const-string v2, "manuleSwitch mProgressDialog dismiss"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory$10;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/Memory;->access$500(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 916
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory$10;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    const/4 v2, 0x0

    #setter for: Lcom/android/settings_ex/deviceinfo/Memory;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/Memory;->access$502(Lcom/android/settings_ex/deviceinfo/Memory;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 918
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory$10;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    const/4 v2, 0x0

    #setter for: Lcom/android/settings_ex/deviceinfo/Memory;->mManulSwaping:Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/Memory;->access$402(Lcom/android/settings_ex/deviceinfo/Memory;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 921
    :catch_0
    move-exception v0

    .line 922
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MemorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manuleSwitch RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory$10;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mManulSwaping:Z
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/Memory;->access$400(Lcom/android/settings_ex/deviceinfo/Memory;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 924
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory$10;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/Memory;->access$500(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 925
    const-string v1, "MemorySettings"

    const-string v2, "manuleSwitch mProgressDialog dismiss"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory$10;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/Memory;->access$500(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 927
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory$10;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    #setter for: Lcom/android/settings_ex/deviceinfo/Memory;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v5}, Lcom/android/settings_ex/deviceinfo/Memory;->access$502(Lcom/android/settings_ex/deviceinfo/Memory;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 929
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory$10;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    #setter for: Lcom/android/settings_ex/deviceinfo/Memory;->mManulSwaping:Z
    invoke-static {v1, v4}, Lcom/android/settings_ex/deviceinfo/Memory;->access$402(Lcom/android/settings_ex/deviceinfo/Memory;Z)Z

    goto :goto_0
.end method
