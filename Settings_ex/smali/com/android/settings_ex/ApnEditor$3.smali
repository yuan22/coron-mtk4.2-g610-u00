.class Lcom/android/settings_ex/ApnEditor$3;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/settings_ex/ApnEditor;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/settings_ex/ApnEditor$3;->this$0:Lcom/android/settings_ex/ApnEditor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v4, 0x0

    .line 264
    invoke-static {}, Lcom/android/settings_ex/ApnEditor;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "background changed apn "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor$3;->this$0:Lcom/android/settings_ex/ApnEditor;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings_ex/ApnEditor;->mFirstTime:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/ApnEditor;->access$1502(Lcom/android/settings_ex/ApnEditor;Z)Z

    .line 266
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor$3;->this$0:Lcom/android/settings_ex/ApnEditor;

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor$3;->this$0:Lcom/android/settings_ex/ApnEditor;

    #getter for: Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/settings_ex/ApnEditor;->access$1600(Lcom/android/settings_ex/ApnEditor;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 267
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor$3;->this$0:Lcom/android/settings_ex/ApnEditor;

    iget-object v1, p0, Lcom/android/settings_ex/ApnEditor$3;->this$0:Lcom/android/settings_ex/ApnEditor;

    iget-object v2, p0, Lcom/android/settings_ex/ApnEditor$3;->this$0:Lcom/android/settings_ex/ApnEditor;

    #getter for: Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/settings_ex/ApnEditor;->access$1700(Lcom/android/settings_ex/ApnEditor;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {}, Lcom/android/settings_ex/ApnEditor;->access$1800()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/android/settings_ex/ApnEditor;->access$1602(Lcom/android/settings_ex/ApnEditor;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 268
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor$3;->this$0:Lcom/android/settings_ex/ApnEditor;

    #getter for: Lcom/android/settings_ex/ApnEditor;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/settings_ex/ApnEditor;->access$1600(Lcom/android/settings_ex/ApnEditor;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 269
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor$3;->this$0:Lcom/android/settings_ex/ApnEditor;

    #calls: Lcom/android/settings_ex/ApnEditor;->fillUi()V
    invoke-static {v0}, Lcom/android/settings_ex/ApnEditor;->access$1900(Lcom/android/settings_ex/ApnEditor;)V

    .line 270
    return-void
.end method
