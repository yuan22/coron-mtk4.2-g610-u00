.class Landroid/appwidget/AppWidgetHost$Callbacks;
.super Lcom/android/internal/appwidget/IAppWidgetHost$Stub;
.source "AppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Callbacks"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/appwidget/AppWidgetHost;


# direct methods
.method constructor <init>(Landroid/appwidget/AppWidgetHost;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->this$0:Landroid/appwidget/AppWidgetHost;

    invoke-direct {p0}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3
    .parameter "appWidgetId"
    .parameter "info"

    .prologue
    .line 74
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->this$0:Landroid/appwidget/AppWidgetHost;

    #calls: Landroid/appwidget/AppWidgetHost;->isLocalBinder()Z
    invoke-static {v1}, Landroid/appwidget/AppWidgetHost;->access$000(Landroid/appwidget/AppWidgetHost;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p2}, Landroid/appwidget/AppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p2

    .line 77
    :cond_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->this$0:Landroid/appwidget/AppWidgetHost;

    iget-object v1, v1, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 78
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 79
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 80
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 81
    return-void
.end method

.method public providersChanged()V
    .locals 3

    .prologue
    .line 84
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->this$0:Landroid/appwidget/AppWidgetHost;

    iget-object v1, v1, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 85
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 86
    return-void
.end method

.method public updateAppWidget(ILandroid/widget/RemoteViews;)V
    .locals 3
    .parameter "appWidgetId"
    .parameter "views"

    .prologue
    .line 61
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->this$0:Landroid/appwidget/AppWidgetHost;

    #calls: Landroid/appwidget/AppWidgetHost;->isLocalBinder()Z
    invoke-static {v1}, Landroid/appwidget/AppWidgetHost;->access$000(Landroid/appwidget/AppWidgetHost;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p2

    .line 64
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->this$0:Landroid/appwidget/AppWidgetHost;

    #getter for: Landroid/appwidget/AppWidgetHost;->mUser:Landroid/os/UserHandle;
    invoke-static {v1}, Landroid/appwidget/AppWidgetHost;->access$100(Landroid/appwidget/AppWidgetHost;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/RemoteViews;->setUser(Landroid/os/UserHandle;)V

    .line 67
    :cond_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->this$0:Landroid/appwidget/AppWidgetHost;

    iget-object v1, v1, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 68
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 69
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 70
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 71
    return-void
.end method

.method public viewDataChanged(II)V
    .locals 3
    .parameter "appWidgetId"
    .parameter "viewId"

    .prologue
    .line 89
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->this$0:Landroid/appwidget/AppWidgetHost;

    iget-object v1, v1, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 90
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 91
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 92
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 93
    return-void
.end method
