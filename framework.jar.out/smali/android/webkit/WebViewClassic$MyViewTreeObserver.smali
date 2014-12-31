.class Landroid/webkit/WebViewClassic$MyViewTreeObserver;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewTreeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter

    .prologue
    .line 1383
    iput-object p1, p0, Landroid/webkit/WebViewClassic$MyViewTreeObserver;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 1386
    iget-object v2, p0, Landroid/webkit/WebViewClassic$MyViewTreeObserver;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 1387
    .local v0, h:I
    iget-object v2, p0, Landroid/webkit/WebViewClassic$MyViewTreeObserver;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mOldHeight:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)I

    move-result v2

    if-ge v2, v0, :cond_0

    .line 1388
    iget-object v2, p0, Landroid/webkit/WebViewClassic$MyViewTreeObserver;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    .line 1390
    .local v1, sy:I
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1391
    const-string/jumbo v2, "webview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGlobalLayout(): scroll -1 by y, sy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    iget-object v2, p0, Landroid/webkit/WebViewClassic$MyViewTreeObserver;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 1395
    .end local v1           #sy:I
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebViewClassic$MyViewTreeObserver;->this$0:Landroid/webkit/WebViewClassic;

    #setter for: Landroid/webkit/WebViewClassic;->mOldHeight:I
    invoke-static {v2, v0}, Landroid/webkit/WebViewClassic;->access$1102(Landroid/webkit/WebViewClassic;I)I

    .line 1396
    return-void
.end method
