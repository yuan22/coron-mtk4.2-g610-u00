.class Lcom/android/server/ServerThread$FileBackup;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileBackup"
.end annotation


# static fields
.field private static final COPY:Ljava/lang/String; = "copy "

.field private static final MAXBUFLENGTH:I = 0x2100

.field private static final MAX_LENGTH:I = 0x2000

.field private static final ONEINTLENGTH:I = 0x4

.field private static final STRINGLENGTH:I = 0x100

.field private static final TAG:Ljava/lang/String; = "FileBackup"


# instance fields
.field private mIn:Ljava/io/InputStream;

.field private mOut:Ljava/io/OutputStream;

.field private mSocket:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ServerThread$FileBackup;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1321
    invoke-direct {p0}, Lcom/android/server/ServerThread$FileBackup;->init()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/ServerThread$FileBackup;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1321
    invoke-direct {p0, p1, p2}, Lcom/android/server/ServerThread$FileBackup;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/ServerThread$FileBackup;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1321
    invoke-direct {p0}, Lcom/android/server/ServerThread$FileBackup;->disconnectSocket()V

    return-void
.end method

.method private bytesToInt([B)I
    .locals 5
    .parameter "intByte"

    .prologue
    .line 1471
    const/4 v0, 0x0

    .line 1473
    .local v0, fromByte:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    .line 1474
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v1, 0x8

    shl-int v2, v3, v4

    .line 1475
    .local v2, n:I
    add-int/2addr v0, v2

    .line 1473
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1478
    .end local v2           #n:I
    :cond_0
    return v0
.end method

.method private final connectSocket()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1346
    iget-object v3, p0, Lcom/android/server/ServerThread$FileBackup;->mSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_0

    .line 1366
    :goto_0
    return v2

    .line 1350
    :cond_0
    const-string v3, "FileBackup"

    const-string v4, "connecting..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    :try_start_0
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Lcom/android/server/ServerThread$FileBackup;->mSocket:Landroid/net/LocalSocket;

    .line 1354
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v3, "filebackup"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 1357
    .local v0, address:Landroid/net/LocalSocketAddress;
    iget-object v3, p0, Lcom/android/server/ServerThread$FileBackup;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 1359
    iget-object v3, p0, Lcom/android/server/ServerThread$FileBackup;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ServerThread$FileBackup;->mIn:Ljava/io/InputStream;

    .line 1360
    iget-object v3, p0, Lcom/android/server/ServerThread$FileBackup;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ServerThread$FileBackup;->mOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1361
    .end local v0           #address:Landroid/net/LocalSocketAddress;
    :catch_0
    move-exception v1

    .line 1362
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "FileBackup"

    const-string v3, "connecting error : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1363
    invoke-direct {p0}, Lcom/android/server/ServerThread$FileBackup;->disconnectSocket()V

    .line 1364
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private final copy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "srcPath"
    .parameter "dstPath"

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x0

    .line 1482
    const/16 v3, 0x2100

    new-array v0, v3, [B

    .line 1483
    .local v0, copyBuf:[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/server/ServerThread$FileBackup;->writeCommand(Ljava/lang/String;[B)I

    .line 1485
    new-array v1, v5, [B

    .line 1486
    .local v1, returnValue:[B
    invoke-static {v0, v2, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1488
    invoke-direct {p0, v1}, Lcom/android/server/ServerThread$FileBackup;->bytesToInt([B)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1489
    const-string v3, "FileBackup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copy from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    :goto_0
    return v2

    .line 1492
    :cond_0
    const-string v2, "FileBackup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copy from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private final disconnectSocket()V
    .locals 3

    .prologue
    .line 1370
    const-string v1, "FileBackup"

    const-string v2, "disconnecting..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ServerThread$FileBackup;->mSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    .line 1373
    iget-object v1, p0, Lcom/android/server/ServerThread$FileBackup;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    .line 1374
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ServerThread$FileBackup;->mSocket:Landroid/net/LocalSocket;

    .line 1376
    :cond_0
    iget-object v1, p0, Lcom/android/server/ServerThread$FileBackup;->mIn:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 1377
    iget-object v1, p0, Lcom/android/server/ServerThread$FileBackup;->mIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1378
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ServerThread$FileBackup;->mIn:Ljava/io/InputStream;

    .line 1380
    :cond_1
    iget-object v1, p0, Lcom/android/server/ServerThread$FileBackup;->mOut:Ljava/io/OutputStream;

    if-eqz v1, :cond_2

    .line 1381
    iget-object v1, p0, Lcom/android/server/ServerThread$FileBackup;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1382
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ServerThread$FileBackup;->mOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1387
    :cond_2
    :goto_0
    return-void

    .line 1384
    :catch_0
    move-exception v0

    .line 1385
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "FileBackup"

    const-string v2, "disconnectSocket error : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private final init()Z
    .locals 2

    .prologue
    .line 1336
    invoke-direct {p0}, Lcom/android/server/ServerThread$FileBackup;->connectSocket()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1337
    const-string v0, "FileBackup"

    const-string v1, "connectSocket failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    const/4 v0, 0x0

    .line 1341
    :goto_0
    return v0

    .line 1340
    :cond_0
    const-string v0, "FileBackup"

    const-string v1, "connectSocket success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private readBytes([BI)Z
    .locals 7
    .parameter "buffer"
    .parameter "len"

    .prologue
    const/4 v3, 0x0

    .line 1440
    const/4 v2, 0x0

    .line 1441
    .local v2, off:I
    const/4 v0, 0x0

    .line 1443
    .local v0, count:I
    if-gez p2, :cond_1

    .line 1467
    :goto_0
    return v3

    .line 1455
    :cond_0
    add-int/2addr v2, v0

    .line 1447
    :cond_1
    if-eq v2, p2, :cond_2

    .line 1449
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ServerThread$FileBackup;->mIn:Ljava/io/InputStream;

    sub-int v5, p2, v2

    invoke-virtual {v4, p1, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1450
    if-gtz v0, :cond_0

    .line 1451
    const-string v4, "FileBackup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1461
    :cond_2
    :goto_1
    if-ne v2, p2, :cond_3

    .line 1462
    const/4 v3, 0x1

    goto :goto_0

    .line 1456
    :catch_0
    move-exception v1

    .line 1457
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "FileBackup"

    const-string v5, "read exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1465
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/ServerThread$FileBackup;->disconnectSocket()V

    .line 1466
    const-string v4, "FileBackup"

    const-string v5, "read bytes error, off != len"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readReply([B)I
    .locals 5
    .parameter "buf"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1419
    const/4 v2, 0x2

    invoke-direct {p0, p1, v2}, Lcom/android/server/ServerThread$FileBackup;->readBytes([BI)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1420
    const-string v2, "FileBackup"

    const-string v3, "!readBytes(buf, 2) error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1436
    :cond_0
    :goto_0
    return v0

    .line 1424
    :cond_1
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p1, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int v0, v2, v3

    .line 1425
    .local v0, buflen:I
    if-lt v0, v4, :cond_2

    const/16 v2, 0x2100

    if-le v0, v2, :cond_3

    .line 1426
    :cond_2
    const-string v2, "FileBackup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid reply length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    invoke-direct {p0}, Lcom/android/server/ServerThread$FileBackup;->disconnectSocket()V

    move v0, v1

    .line 1428
    goto :goto_0

    .line 1431
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/android/server/ServerThread$FileBackup;->readBytes([BI)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1432
    const-string v2, "FileBackup"

    const-string v3, "!readBytes(buf, buflen) error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1433
    goto :goto_0
.end method

.method private final writeCommand(Ljava/lang/String;[B)I
    .locals 8
    .parameter "command"
    .parameter "buf"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1392
    :try_start_0
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1398
    .local v0, cmd:[B
    array-length v3, v0

    .line 1399
    .local v3, len:I
    if-lt v3, v6, :cond_0

    const/16 v5, 0x2100

    if-le v3, v5, :cond_1

    .line 1415
    .end local v0           #cmd:[B
    .end local v3           #len:I
    :cond_0
    :goto_0
    return v4

    .line 1393
    :catch_0
    move-exception v1

    .line 1394
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v5, "FileBackup"

    const-string v6, "writeCommand err : "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1403
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #cmd:[B
    .restart local v3       #len:I
    :cond_1
    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    .line 1404
    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p2, v6

    .line 1406
    :try_start_1
    iget-object v5, p0, Lcom/android/server/ServerThread$FileBackup;->mOut:Ljava/io/OutputStream;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v5, p2, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 1407
    iget-object v5, p0, Lcom/android/server/ServerThread$FileBackup;->mOut:Ljava/io/OutputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1408
    iget-object v5, p0, Lcom/android/server/ServerThread$FileBackup;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1415
    invoke-direct {p0, p2}, Lcom/android/server/ServerThread$FileBackup;->readReply([B)I

    move-result v4

    goto :goto_0

    .line 1409
    :catch_1
    move-exception v2

    .line 1410
    .local v2, ex:Ljava/lang/Exception;
    const-string v5, "FileBackup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "write error! command : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1411
    invoke-direct {p0}, Lcom/android/server/ServerThread$FileBackup;->disconnectSocket()V

    goto :goto_0
.end method
