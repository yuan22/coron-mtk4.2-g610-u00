.class Lcom/android/settings_ex/StreamingProvider$StreamingCursor;
.super Landroid/database/AbstractCursor;
.source "StreamingProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/StreamingProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StreamingCursor"
.end annotation


# instance fields
.field private mStreamingSettings:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 65
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    iput-object v6, p0, Lcom/android/settings_ex/StreamingProvider$StreamingCursor;->mStreamingSettings:Landroid/content/ContentValues;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 69
    .local v1, cr:Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/settings_ex/StreamingProvider$StreamingCursor;->mStreamingSettings:Landroid/content/ContentValues;

    const-string v7, "name"

    const-string v8, "streaming"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    #calls: Lcom/android/settings_ex/StreamingProvider;->getStreamingApn(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings_ex/StreamingProvider;->access$000(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, apnName:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 72
    :cond_0
    const-string v0, "wap"

    .line 74
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/StreamingProvider$StreamingCursor;->mStreamingSettings:Landroid/content/ContentValues;

    const-string v7, "apn"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v6, "mtk_rtsp_min_udp_port"

    invoke-static {v1, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, minPort:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/StreamingProvider$StreamingCursor;->mStreamingSettings:Landroid/content/ContentValues;

    const-string v7, "min_port"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v6, "mtk_rtsp_max_udp_port"

    invoke-static {v1, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, maxPort:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/StreamingProvider$StreamingCursor;->mStreamingSettings:Landroid/content/ContentValues;

    const-string v7, "max_port"

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v6, "mtk_rtsp_proxy_host"

    invoke-static {v1, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, proxy:Ljava/lang/String;
    if-nez v5, :cond_2

    .line 85
    const-string v5, ""

    .line 87
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/StreamingProvider$StreamingCursor;->mStreamingSettings:Landroid/content/ContentValues;

    const-string v7, "proxy"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v6, "mtk_rtsp_proxy_port"

    invoke-static {v1, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, port:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/StreamingProvider$StreamingCursor;->mStreamingSettings:Landroid/content/ContentValues;

    const-string v7, "port"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method


# virtual methods
.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .parameter "columnName"

    .prologue
    .line 109
    const-string v0, "apn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    .line 111
    :cond_0
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :cond_1
    const-string v0, "proxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    const/4 v0, 0x2

    goto :goto_0

    .line 115
    :cond_2
    const-string v0, "port"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    const/4 v0, 0x3

    goto :goto_0

    .line 117
    :cond_3
    const-string v0, "min_port"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 118
    const/4 v0, 0x4

    goto :goto_0

    .line 119
    :cond_4
    const-string v0, "max_port"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 120
    const/4 v0, 0x5

    goto :goto_0

    .line 122
    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 129
    packed-switch p1, :pswitch_data_0

    .line 143
    const-string v0, ""

    :goto_0
    return-object v0

    .line 131
    :pswitch_0
    const-string v0, "name"

    goto :goto_0

    .line 133
    :pswitch_1
    const-string v0, "name"

    goto :goto_0

    .line 135
    :pswitch_2
    const-string v0, "proxy"

    goto :goto_0

    .line 137
    :pswitch_3
    const-string v0, "port"

    goto :goto_0

    .line 139
    :pswitch_4
    const-string v0, "min_port"

    goto :goto_0

    .line 141
    :pswitch_5
    const-string v0, "max_port"

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    const/4 v1, 0x6

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "min_port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "max_port"

    aput-object v2, v0, v1

    .line 59
    .local v0, columns:[Ljava/lang/String;
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public getDouble(I)D
    .locals 1
    .parameter "arg0"

    .prologue
    .line 103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 149
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 155
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .locals 1
    .parameter "column"

    .prologue
    .line 161
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "column"

    .prologue
    .line 173
    packed-switch p1, :pswitch_data_0

    .line 187
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 175
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/StreamingProvider$StreamingCursor;->mStreamingSettings:Landroid/content/ContentValues;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 177
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/StreamingProvider$StreamingCursor;->mStreamingSettings:Landroid/content/ContentValues;

    const-string v1, "apn"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 179
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/StreamingProvider$StreamingCursor;->mStreamingSettings:Landroid/content/ContentValues;

    const-string v1, "proxy"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 181
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/StreamingProvider$StreamingCursor;->mStreamingSettings:Landroid/content/ContentValues;

    const-string v1, "port"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 183
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/StreamingProvider$StreamingCursor;->mStreamingSettings:Landroid/content/ContentValues;

    const-string v1, "min_port"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 185
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/StreamingProvider$StreamingCursor;->mStreamingSettings:Landroid/content/ContentValues;

    const-string v1, "max_port"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 193
    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
