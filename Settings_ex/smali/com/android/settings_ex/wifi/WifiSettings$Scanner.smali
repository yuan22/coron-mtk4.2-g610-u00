.class Lcom/android/settings_ex/wifi/WifiSettings$Scanner;
.super Landroid/os/Handler;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 1228
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1229
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mRetry:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/WifiSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1228
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    return-void
.end method


# virtual methods
.method forceScan()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1238
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1239
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1240
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 1249
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->access$200(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1250
    iput v3, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mRetry:I

    .line 1260
    :cond_0
    const-wide/16 v1, 0x1770

    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1261
    :cond_1
    :goto_0
    return-void

    .line 1251
    :cond_2
    iget v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mRetry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mRetry:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 1252
    iput v3, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mRetry:I

    .line 1253
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1254
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 1255
    const v1, 0x7f0b043c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method pause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1243
    iput v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mRetry:I

    .line 1244
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1245
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1232
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1233
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1235
    :cond_0
    return-void
.end method
