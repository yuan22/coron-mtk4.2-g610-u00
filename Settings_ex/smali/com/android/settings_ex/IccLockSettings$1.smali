.class Lcom/android/settings_ex/IccLockSettings$1;
.super Landroid/os/Handler;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/IccLockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 124
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 125
    .local v0, ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 127
    :pswitch_0
    const-string v3, "IccLockSettings"

    const-string v4, "MSG_ENABLE_ICC_PIN_COMPLETE"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    :goto_1
    #calls: Lcom/android/settings_ex/IccLockSettings;->iccLockChanged(Z)V
    invoke-static {v3, v1}, Lcom/android/settings_ex/IccLockSettings;->access$000(Lcom/android/settings_ex/IccLockSettings;Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 131
    :pswitch_1
    const-string v3, "IccLockSettings"

    const-string v4, "MSG_CHANGE_ICC_PIN_COMPLETE"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    :goto_2
    #calls: Lcom/android/settings_ex/IccLockSettings;->iccPinChanged(Z)V
    invoke-static {v3, v1}, Lcom/android/settings_ex/IccLockSettings;->access$100(Lcom/android/settings_ex/IccLockSettings;Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 135
    :pswitch_2
    const-string v1, "IccLockSettings"

    const-string v2, "MSG_SIM_STATE_CHANGED"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #calls: Lcom/android/settings_ex/IccLockSettings;->updatePreferences()V
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$200(Lcom/android/settings_ex/IccLockSettings;)V

    .line 137
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #calls: Lcom/android/settings_ex/IccLockSettings;->updateOnSimLockStateChanged()V
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$300(Lcom/android/settings_ex/IccLockSettings;)V

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
