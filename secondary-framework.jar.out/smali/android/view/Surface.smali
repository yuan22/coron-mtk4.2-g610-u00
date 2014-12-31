.class public Landroid/view/Surface;
.super Ljava/lang/Object;
.source "Surface.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Surface$CompatibleCanvas;,
        Landroid/view/Surface$PhysicalDisplayInfo;,
        Landroid/view/Surface$OutOfResourcesException;
    }
.end annotation


# static fields
.field public static final BUILT_IN_DISPLAY_ID_HDMI:I = 0x1

.field public static final BUILT_IN_DISPLAY_ID_MAIN:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field public static final FX_SURFACE_BLUR:I = 0x10000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FX_SURFACE_DIM:I = 0x20000

.field public static final FX_SURFACE_MASK:I = 0xf0000

.field public static final FX_SURFACE_NORMAL:I = 0x0

.field public static final FX_SURFACE_SCREENSHOT:I = 0x30000

#the value of this static final field might be set in the static constructor
.field private static final HEADLESS:Z = false

.field public static final HIDDEN:I = 0x4

.field public static final NON_PREMULTIPLIED:I = 0x100

.field public static final OPAQUE:I = 0x400

.field public static final PROTECTED_APP:I = 0x800

.field public static final ROTATION_0:I = 0x0

.field public static final ROTATION_180:I = 0x2

.field public static final ROTATION_270:I = 0x3

.field public static final ROTATION_90:I = 0x1

.field public static final SECURE:I = 0x80

.field public static final SURFACE_HIDDEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Surface"


# instance fields
.field private final mCanvas:Landroid/graphics/Canvas;

.field private mCanvasSaveCount:I

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mCompatibilityTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field private mCompatibleMatrix:Landroid/graphics/Matrix;

.field private mGenerationId:I

.field private mHeight:I

.field private mName:Ljava/lang/String;

.field private mNativeSurface:I

.field private mNativeSurfaceControl:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const-string v0, "1"

    const-string v1, "ro.config.headless"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/view/Surface;->HEADLESS:Z

    .line 43
    new-instance v0, Landroid/view/Surface$1;

    invoke-direct {v0}, Landroid/view/Surface$1;-><init>()V

    sput-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 217
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$1;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 291
    invoke-static {}, Landroid/view/Surface;->checkHeadless()V

    .line 293
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .parameter "surfaceTexture"

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 217
    new-instance v1, Landroid/view/Surface$CompatibleCanvas;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$1;)V

    iput-object v1, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 360
    if-nez p1, :cond_0

    .line 361
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "surfaceTexture must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 364
    :cond_0
    invoke-static {}, Landroid/view/Surface;->checkHeadless()V

    .line 366
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    .line 368
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/Surface;->nativeCreateFromSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    iget-object v1, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v2, "release"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 375
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 371
    .local v0, ex:Landroid/view/Surface$OutOfResourcesException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    .locals 3
    .parameter "session"
    .parameter "name"
    .parameter "w"
    .parameter "h"
    .parameter "format"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 217
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$1;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 321
    if-nez p1, :cond_0

    .line 322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "session must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    if-nez p2, :cond_1

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_1
    and-int/lit8 v0, p6, 0x4

    if-nez v0, :cond_2

    .line 329
    const-string v0, "Surface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surfaces should always be created with the HIDDEN flag set to ensure that they are not made visible prematurely before all of the surface\'s properties have been configured.  Set the other properties and make the surface visible within a transaction.  New surface name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    :cond_2
    invoke-static {}, Landroid/view/Surface;->checkHeadless()V

    .line 339
    iput-object p2, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    .line 341
    iput p3, p0, Landroid/view/Surface;->mWidth:I

    .line 342
    iput p4, p0, Landroid/view/Surface;->mHeight:I

    .line 344
    invoke-direct/range {p0 .. p6}, Landroid/view/Surface;->nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    .line 346
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method static synthetic access$100(Landroid/view/Surface;)Landroid/content/res/CompatibilityInfo$Translator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Landroid/view/Surface;->mCompatibilityTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/Surface;)Landroid/graphics/Matrix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public static blankDisplay(Landroid/os/IBinder;)V
    .locals 2
    .parameter "displayToken"

    .prologue
    .line 686
    if-nez p0, :cond_0

    .line 687
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_0
    invoke-static {p0}, Landroid/view/Surface;->nativeBlankDisplay(Landroid/os/IBinder;)V

    .line 690
    return-void
.end method

.method private static checkHeadless()V
    .locals 2

    .prologue
    .line 768
    sget-boolean v0, Landroid/view/Surface;->HEADLESS:Z

    if-eqz v0, :cond_0

    .line 769
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Device is headless"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 771
    :cond_0
    return-void
.end method

.method public static closeTransaction()V
    .locals 0

    .prologue
    .line 537
    invoke-static {}, Landroid/view/Surface;->nativeCloseTransaction()V

    .line 538
    return-void
.end method

.method public static createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
    .locals 2
    .parameter "name"
    .parameter "secure"

    .prologue
    .line 636
    if-nez p0, :cond_0

    .line 637
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 639
    :cond_0
    invoke-static {p0, p1}, Landroid/view/Surface;->nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getBuiltInDisplay(I)Landroid/os/IBinder;
    .locals 1
    .parameter "builtInDisplayId"

    .prologue
    .line 631
    invoke-static {p0}, Landroid/view/Surface;->nativeGetBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayInfo(Landroid/os/IBinder;Landroid/view/Surface$PhysicalDisplayInfo;)Z
    .locals 2
    .parameter "displayToken"
    .parameter "outInfo"

    .prologue
    .line 675
    if-nez p0, :cond_0

    .line 676
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_0
    if-nez p1, :cond_1

    .line 679
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outInfo must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_1
    invoke-static {p0, p1}, Landroid/view/Surface;->nativeGetDisplayInfo(Landroid/os/IBinder;Landroid/view/Surface$PhysicalDisplayInfo;)Z

    move-result v0

    return v0
.end method

.method private static native nativeBlankDisplay(Landroid/os/IBinder;)V
.end method

.method private static native nativeCloseTransaction()V
.end method

.method private native nativeCopyFrom(Landroid/view/Surface;)V
.end method

.method private native nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
.end method

.method private native nativeCreateFromSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private native nativeDestroy()V
.end method

.method private static native nativeGetBuiltInDisplay(I)Landroid/os/IBinder;
.end method

.method private static native nativeGetDisplayInfo(Landroid/os/IBinder;Landroid/view/Surface$PhysicalDisplayInfo;)Z
.end method

.method private native nativeGetIdentity()I
.end method

.method private native nativeIsConsumerRunningBehind()Z
.end method

.method private native nativeIsValid()Z
.end method

.method private native nativeLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
.end method

.method private static native nativeOpenTransaction()V
.end method

.method private native nativeReadFromParcel(Landroid/os/Parcel;)V
.end method

.method private native nativeRelease()V
.end method

.method private static native nativeScreenshot(Landroid/os/IBinder;IIIIZ)Landroid/graphics/Bitmap;
.end method

.method private native nativeSetAlpha(F)V
.end method

.method private static native nativeSetAnimationTransaction()V
.end method

.method private static native nativeSetDisplayLayerStack(Landroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method private static native nativeSetDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)V
.end method

.method private native nativeSetFlags(II)V
.end method

.method private native nativeSetFlagsEx(II)V
.end method

.method private native nativeSetLayer(I)V
.end method

.method private native nativeSetLayerStack(I)V
.end method

.method private native nativeSetMatrix(FFFF)V
.end method

.method private native nativeSetPosition(FF)V
.end method

.method private native nativeSetSize(II)V
.end method

.method private native nativeSetTransparentRegionHint(Landroid/graphics/Region;)V
.end method

.method private native nativeSetWindowCrop(Landroid/graphics/Rect;)V
.end method

.method private native nativeTransferFrom(Landroid/view/Surface;)V
.end method

.method private static native nativeUnblankDisplay(Landroid/os/IBinder;)V
.end method

.method private native nativeUnlockCanvasAndPost(Landroid/graphics/Canvas;)V
.end method

.method private native nativeWriteToParcel(Landroid/os/Parcel;)V
.end method

.method public static openTransaction()V
    .locals 0

    .prologue
    .line 532
    invoke-static {}, Landroid/view/Surface;->nativeOpenTransaction()V

    .line 533
    return-void
.end method

.method public static screenshot(II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 499
    invoke-static {v3}, Landroid/view/Surface;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    .line 500
    .local v0, displayToken:Landroid/os/IBinder;
    const/4 v5, 0x1

    move v1, p0

    move v2, p1

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/view/Surface;->nativeScreenshot(Landroid/os/IBinder;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static screenshot(IIII)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "minLayer"
    .parameter "maxLayer"

    .prologue
    const/4 v5, 0x0

    .line 521
    invoke-static {v5}, Landroid/view/Surface;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    .local v0, displayToken:Landroid/os/IBinder;
    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 522
    invoke-static/range {v0 .. v5}, Landroid/view/Surface;->nativeScreenshot(Landroid/os/IBinder;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static setAnimationTransaction()V
    .locals 0

    .prologue
    .line 542
    invoke-static {}, Landroid/view/Surface;->nativeSetAnimationTransaction()V

    .line 543
    return-void
.end method

.method public static setDisplayLayerStack(Landroid/os/IBinder;I)V
    .locals 2
    .parameter "displayToken"
    .parameter "layerStack"

    .prologue
    .line 652
    if-nez p0, :cond_0

    .line 653
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_0
    invoke-static {p0, p1}, Landroid/view/Surface;->nativeSetDisplayLayerStack(Landroid/os/IBinder;I)V

    .line 656
    return-void
.end method

.method public static setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "displayToken"
    .parameter "orientation"
    .parameter "layerStackRect"
    .parameter "displayRect"

    .prologue
    .line 661
    if-nez p0, :cond_0

    .line 662
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_0
    if-nez p2, :cond_1

    .line 665
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "layerStackRect must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :cond_1
    if-nez p3, :cond_2

    .line 668
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayRect must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 670
    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroid/view/Surface;->nativeSetDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 671
    return-void
.end method

.method public static setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 2
    .parameter "displayToken"
    .parameter "surface"

    .prologue
    .line 644
    if-nez p0, :cond_0

    .line 645
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_0
    invoke-static {p0, p1}, Landroid/view/Surface;->nativeSetDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 648
    return-void
.end method

.method public static unblankDisplay(Landroid/os/IBinder;)V
    .locals 2
    .parameter "displayToken"

    .prologue
    .line 694
    if-nez p0, :cond_0

    .line 695
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_0
    invoke-static {p0}, Landroid/view/Surface;->nativeUnblankDisplay(Landroid/os/IBinder;)V

    .line 698
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/view/Surface;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 710
    if-nez p1, :cond_0

    .line 711
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "other must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :cond_0
    if-eq p1, p0, :cond_1

    .line 714
    invoke-direct {p0, p1}, Landroid/view/Surface;->nativeCopyFrom(Landroid/view/Surface;)V

    .line 716
    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 737
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 406
    invoke-direct {p0}, Landroid/view/Surface;->nativeDestroy()V

    .line 407
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 408
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 380
    :try_start_0
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 383
    :cond_0
    invoke-direct {p0}, Landroid/view/Surface;->nativeRelease()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 387
    return-void

    .line 385
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getGenerationId()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Landroid/view/Surface;->mGenerationId:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Landroid/view/Surface;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Landroid/view/Surface;->mWidth:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 585
    invoke-direct {p0, v0, v0}, Landroid/view/Surface;->nativeSetFlags(II)V

    .line 586
    return-void
.end method

.method public isConsumerRunningBehind()Z
    .locals 1

    .prologue
    .line 438
    invoke-direct {p0}, Landroid/view/Surface;->nativeIsConsumerRunningBehind()Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 417
    invoke-direct {p0}, Landroid/view/Surface;->nativeIsValid()Z

    move-result v0

    return v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 1
    .parameter "dirty"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 458
    invoke-direct {p0, p1}, Landroid/view/Surface;->nativeLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 741
    if-nez p1, :cond_0

    .line 742
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    .line 746
    invoke-direct {p0, p1}, Landroid/view/Surface;->nativeReadFromParcel(Landroid/os/Parcel;)V

    .line 747
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 395
    invoke-direct {p0}, Landroid/view/Surface;->nativeRelease()V

    .line 396
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 397
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 600
    invoke-direct {p0, p1}, Landroid/view/Surface;->nativeSetAlpha(F)V

    .line 601
    return-void
.end method

.method setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V
    .locals 2
    .parameter "translator"

    .prologue
    .line 484
    if-eqz p1, :cond_0

    .line 485
    iget v0, p1, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    .line 486
    .local v0, appScale:F
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    .line 487
    iget-object v1, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 489
    .end local v0           #appScale:F
    :cond_0
    return-void
.end method

.method public setFlags(II)V
    .locals 0
    .parameter "flags"
    .parameter "mask"

    .prologue
    .line 610
    invoke-direct {p0, p1, p2}, Landroid/view/Surface;->nativeSetFlags(II)V

    .line 611
    return-void
.end method

.method public setFlagsEx(II)V
    .locals 0
    .parameter "flags"
    .parameter "mask"

    .prologue
    .line 616
    invoke-direct {p0, p1, p2}, Landroid/view/Surface;->nativeSetFlagsEx(II)V

    .line 617
    return-void
.end method

.method public setLayer(I)V
    .locals 0
    .parameter "zorder"

    .prologue
    .line 547
    invoke-direct {p0, p1}, Landroid/view/Surface;->nativeSetLayer(I)V

    .line 548
    return-void
.end method

.method public setLayerStack(I)V
    .locals 0
    .parameter "layerStack"

    .prologue
    .line 626
    invoke-direct {p0, p1}, Landroid/view/Surface;->nativeSetLayerStack(I)V

    .line 627
    return-void
.end method

.method public setMatrix(FFFF)V
    .locals 0
    .parameter "dsdx"
    .parameter "dtdx"
    .parameter "dsdy"
    .parameter "dtdy"

    .prologue
    .line 605
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/Surface;->nativeSetMatrix(FFFF)V

    .line 606
    return-void
.end method

.method public setPosition(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 559
    invoke-direct {p0, p1, p2}, Landroid/view/Surface;->nativeSetPosition(FF)V

    .line 560
    return-void
.end method

.method public setPosition(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 553
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-direct {p0, v0, v1}, Landroid/view/Surface;->nativeSetPosition(FF)V

    .line 555
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 565
    iput p1, p0, Landroid/view/Surface;->mWidth:I

    .line 566
    iput p2, p0, Landroid/view/Surface;->mHeight:I

    .line 568
    invoke-direct {p0, p1, p2}, Landroid/view/Surface;->nativeSetSize(II)V

    .line 569
    return-void
.end method

.method public setTransparentRegionHint(Landroid/graphics/Region;)V
    .locals 0
    .parameter "region"

    .prologue
    .line 595
    invoke-direct {p0, p1}, Landroid/view/Surface;->nativeSetTransparentRegionHint(Landroid/graphics/Region;)V

    .line 596
    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "crop"

    .prologue
    .line 621
    invoke-direct {p0, p1}, Landroid/view/Surface;->nativeSetWindowCrop(Landroid/graphics/Rect;)V

    .line 622
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 590
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/Surface;->nativeSetFlags(II)V

    .line 591
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", identity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/view/Surface;->nativeGetIdentity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transferFrom(Landroid/view/Surface;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 727
    if-nez p1, :cond_0

    .line 728
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "other must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_0
    if-eq p1, p0, :cond_1

    .line 731
    invoke-direct {p0, p1}, Landroid/view/Surface;->nativeTransferFrom(Landroid/view/Surface;)V

    .line 733
    :cond_1
    return-void
.end method

.method public unlockCanvas(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 476
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 468
    invoke-direct {p0, p1}, Landroid/view/Surface;->nativeUnlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 469
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 751
    if-nez p1, :cond_0

    .line 752
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 755
    :cond_0
    iget-object v0, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 756
    invoke-direct {p0, p1}, Landroid/view/Surface;->nativeWriteToParcel(Landroid/os/Parcel;)V

    .line 757
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 758
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    .line 760
    :cond_1
    return-void
.end method
