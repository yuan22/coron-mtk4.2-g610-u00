.class public Landroid/graphics/Paint;
.super Ljava/lang/Object;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Paint$FontMetricsInt;,
        Landroid/graphics/Paint$FontMetrics;,
        Landroid/graphics/Paint$Align;,
        Landroid/graphics/Paint$Join;,
        Landroid/graphics/Paint$Cap;,
        Landroid/graphics/Paint$Style;
    }
.end annotation


# static fields
.field public static final ANTI_ALIAS_FLAG:I = 0x1

.field public static final BIDI_DEFAULT_LTR:I = 0x2

.field public static final BIDI_DEFAULT_RTL:I = 0x3

.field private static final BIDI_FLAG_MASK:I = 0x7

.field public static final BIDI_FORCE_LTR:I = 0x4

.field public static final BIDI_FORCE_RTL:I = 0x5

.field public static final BIDI_LTR:I = 0x0

.field private static final BIDI_MAX_FLAG_VALUE:I = 0x5

.field public static final BIDI_RTL:I = 0x1

.field public static final CURSOR_AFTER:I = 0x0

.field public static final CURSOR_AT:I = 0x4

.field public static final CURSOR_AT_OR_AFTER:I = 0x1

.field public static final CURSOR_AT_OR_BEFORE:I = 0x3

.field public static final CURSOR_BEFORE:I = 0x2

.field private static final CURSOR_OPT_MAX_VALUE:I = 0x4

.field static final DEFAULT_PAINT_FLAGS:I = 0x100

.field public static final DEV_KERN_TEXT_FLAG:I = 0x100

.field public static final DIRECTION_LTR:I = 0x0

.field public static final DIRECTION_RTL:I = 0x1

.field public static final DITHER_FLAG:I = 0x4

.field public static final FAKE_BOLD_TEXT_FLAG:I = 0x20

.field public static final FILTER_BITMAP_FLAG:I = 0x2

.field public static final HINTING_OFF:I = 0x0

.field public static final HINTING_ON:I = 0x1

.field public static final LINEAR_TEXT_FLAG:I = 0x40

.field public static final STRIKE_THRU_TEXT_FLAG:I = 0x10

.field public static final SUBPIXEL_TEXT_FLAG:I = 0x80

.field public static final UNDERLINE_TEXT_FLAG:I = 0x8

.field static final sAlignArray:[Landroid/graphics/Paint$Align;

.field static final sCapArray:[Landroid/graphics/Paint$Cap;

.field static final sJoinArray:[Landroid/graphics/Paint$Join;

.field static final sStyleArray:[Landroid/graphics/Paint$Style;


# instance fields
.field public hasShadow:Z

.field public mBidiFlags:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCompatScaling:F

.field private mHasCompatScaling:Z

.field private mInvCompatScaling:F

.field private mLocale:Ljava/util/Locale;

.field private mMaskFilter:Landroid/graphics/MaskFilter;

.field public mNativePaint:I

.field private mPathEffect:Landroid/graphics/PathEffect;

.field private mRasterizer:Landroid/graphics/Rasterizer;

.field private mShader:Landroid/graphics/Shader;

.field private mTypeface:Landroid/graphics/Typeface;

.field private mXfermode:Landroid/graphics/Xfermode;

.field public shadowColor:I

.field public shadowDx:F

.field public shadowDy:F

.field public shadowRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-array v0, v5, [Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    .line 80
    new-array v0, v5, [Landroid/graphics/Paint$Cap;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    .line 83
    new-array v0, v5, [Landroid/graphics/Paint$Join;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    .line 86
    new-array v0, v5, [Landroid/graphics/Paint$Align;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 339
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 348
    invoke-static {}, Landroid/graphics/Paint;->native_init()I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    .line 349
    or-int/lit16 v0, p1, 0x100

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 354
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 355
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextLocale(Ljava/util/Locale;)V

    .line 356
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 1
    .parameter "paint"

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 366
    iget v0, p1, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0}, Landroid/graphics/Paint;->native_initWithPaint(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    .line 367
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    .line 368
    return-void
.end method

.method private static native finalizer(I)V
.end method

.method private native nSetShadowLayer(FFFI)V
.end method

.method private static native nativeGetCharArrayBounds(I[CIILandroid/graphics/Rect;)V
.end method

.method private static native nativeGetStringBounds(ILjava/lang/String;IILandroid/graphics/Rect;)V
.end method

.method private native native_breakText(Ljava/lang/String;ZF[F)I
.end method

.method private native native_breakText([CIIF[F)I
.end method

.method private static native native_getFillPath(III)Z
.end method

.method private static native native_getStrokeCap(I)I
.end method

.method private static native native_getStrokeJoin(I)I
.end method

.method private static native native_getStyle(I)I
.end method

.method private static native native_getTextAlign(I)I
.end method

.method private static native native_getTextGlyphs(ILjava/lang/String;IIIII[C)I
.end method

.method private static native native_getTextPath(IILjava/lang/String;IIFFI)V
.end method

.method private static native native_getTextPath(II[CIIFFI)V
.end method

.method private static native native_getTextRunAdvances(ILjava/lang/String;IIIII[FII)F
.end method

.method private static native native_getTextRunAdvances(I[CIIIII[FII)F
.end method

.method private native native_getTextRunCursor(ILjava/lang/String;IIIII)I
.end method

.method private native native_getTextRunCursor(I[CIIIII)I
.end method

.method private static native native_getTextWidths(ILjava/lang/String;II[F)I
.end method

.method private static native native_getTextWidths(I[CII[F)I
.end method

.method private static native native_init()I
.end method

.method private static native native_initWithPaint(I)I
.end method

.method private native native_measureText(Ljava/lang/String;)F
.end method

.method private native native_measureText(Ljava/lang/String;II)F
.end method

.method private native native_measureText([CII)F
.end method

.method private static native native_reset(I)V
.end method

.method private static native native_set(II)V
.end method

.method private static native native_setColorFilter(II)I
.end method

.method private static native native_setMaskFilter(II)I
.end method

.method private static native native_setPathEffect(II)I
.end method

.method private static native native_setRasterizer(II)I
.end method

.method private static native native_setShader(II)I
.end method

.method private static native native_setStrokeCap(II)V
.end method

.method private static native native_setStrokeJoin(II)V
.end method

.method private static native native_setStyle(II)V
.end method

.method private static native native_setTextAlign(II)V
.end method

.method private static native native_setTextLocale(ILjava/lang/String;)V
.end method

.method private static native native_setTypeface(II)I
.end method

.method private static native native_setXfermode(II)I
.end method

.method private setClassVariablesFrom(Landroid/graphics/Paint;)V
    .locals 1
    .parameter "paint"

    .prologue
    .line 420
    iget-object v0, p1, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 421
    iget-object v0, p1, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 422
    iget-object v0, p1, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    iput-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 423
    iget-object v0, p1, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    iput-object v0, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    .line 424
    iget-object v0, p1, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 425
    iget-object v0, p1, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 426
    iget-object v0, p1, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    iput-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 428
    iget-boolean v0, p1, Landroid/graphics/Paint;->mHasCompatScaling:Z

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 429
    iget v0, p1, Landroid/graphics/Paint;->mCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 430
    iget v0, p1, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 432
    iget-boolean v0, p1, Landroid/graphics/Paint;->hasShadow:Z

    iput-boolean v0, p0, Landroid/graphics/Paint;->hasShadow:Z

    .line 433
    iget v0, p1, Landroid/graphics/Paint;->shadowDx:F

    iput v0, p0, Landroid/graphics/Paint;->shadowDx:F

    .line 434
    iget v0, p1, Landroid/graphics/Paint;->shadowDy:F

    iput v0, p0, Landroid/graphics/Paint;->shadowDy:F

    .line 435
    iget v0, p1, Landroid/graphics/Paint;->shadowRadius:F

    iput v0, p0, Landroid/graphics/Paint;->shadowRadius:F

    .line 436
    iget v0, p1, Landroid/graphics/Paint;->shadowColor:I

    iput v0, p0, Landroid/graphics/Paint;->shadowColor:I

    .line 438
    iget v0, p1, Landroid/graphics/Paint;->mBidiFlags:I

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 439
    iget-object v0, p1, Landroid/graphics/Paint;->mLocale:Ljava/util/Locale;

    iput-object v0, p0, Landroid/graphics/Paint;->mLocale:Ljava/util/Locale;

    .line 440
    return-void
.end method


# virtual methods
.method public native ascent()F
.end method

.method public breakText(Ljava/lang/CharSequence;IIZF[F)I
    .locals 7
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "measureForwards"
    .parameter "maxWidth"
    .parameter "measuredWidth"

    .prologue
    const/4 v2, 0x0

    .line 1508
    if-nez p1, :cond_0

    .line 1509
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1511
    :cond_0
    or-int v0, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v0, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v0, v3

    if-gez v0, :cond_1

    .line 1512
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1515
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_2

    if-ne p2, p3, :cond_3

    :cond_2
    move v6, v2

    .line 1535
    .end local p1
    :goto_0
    return v6

    .line 1518
    .restart local p1
    :cond_3
    if-nez p2, :cond_4

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_4

    .line 1519
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p4, p5, p6}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v6

    goto :goto_0

    .line 1523
    .restart local p1
    :cond_4
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    .line 1526
    .local v1, buf:[C
    invoke-static {p1, p2, p3, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1528
    if-eqz p4, :cond_5

    .line 1529
    sub-int v3, p3, p2

    move-object v0, p0

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result v6

    .line 1534
    .local v6, result:I
    :goto_1
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0

    .line 1531
    .end local v6           #result:I
    :cond_5
    sub-int v0, p3, p2

    neg-int v3, v0

    move-object v0, p0

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result v6

    .restart local v6       #result:I
    goto :goto_1
.end method

.method public breakText(Ljava/lang/String;ZF[F)I
    .locals 5
    .parameter "text"
    .parameter "measureForwards"
    .parameter "maxWidth"
    .parameter "measuredWidth"

    .prologue
    const/4 v2, 0x0

    .line 1556
    if-nez p1, :cond_0

    .line 1557
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1560
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 1573
    :cond_1
    :goto_0
    return v1

    .line 1563
    :cond_2
    iget-boolean v3, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v3, :cond_3

    .line 1564
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/Paint;->native_breakText(Ljava/lang/String;ZF[F)I

    move-result v1

    goto :goto_0

    .line 1567
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1568
    .local v0, oldSize:F
    iget v3, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v3, v0

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1569
    iget v3, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v3, p3

    invoke-direct {p0, p1, p2, v3, p4}, Landroid/graphics/Paint;->native_breakText(Ljava/lang/String;ZF[F)I

    move-result v1

    .line 1571
    .local v1, res:I
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1572
    if-eqz p4, :cond_1

    aget v3, p4, v2

    iget v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v3, v4

    aput v3, p4, v2

    goto :goto_0
.end method

.method public breakText([CIIF[F)I
    .locals 9
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "maxWidth"
    .parameter "measuredWidth"

    .prologue
    const/4 v8, 0x0

    .line 1463
    if-nez p1, :cond_0

    .line 1464
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1466
    :cond_0
    if-ltz p2, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1467
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1470
    :cond_2
    array-length v0, p1

    if-eqz v0, :cond_3

    if-nez p3, :cond_5

    :cond_3
    move v7, v8

    .line 1483
    :cond_4
    :goto_0
    return v7

    .line 1473
    :cond_5
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_6

    .line 1474
    invoke-direct/range {p0 .. p5}, Landroid/graphics/Paint;->native_breakText([CIIF[F)I

    move-result v7

    goto :goto_0

    .line 1477
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    .line 1478
    .local v6, oldSize:F
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v6

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1479
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v4, p4, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/graphics/Paint;->native_breakText([CIIF[F)I

    move-result v7

    .line 1481
    .local v7, res:I
    invoke-virtual {p0, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1482
    if-eqz p5, :cond_4

    aget v0, p5, v8

    iget v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v0, v1

    aput v0, p5, v8

    goto :goto_0
.end method

.method public clearShadowLayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1044
    iput-boolean v1, p0, Landroid/graphics/Paint;->hasShadow:Z

    .line 1045
    invoke-direct {p0, v0, v0, v0, v1}, Landroid/graphics/Paint;->nSetShadowLayer(FFFI)V

    .line 1046
    return-void
.end method

.method public native descent()F
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2219
    :try_start_0
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0}, Landroid/graphics/Paint;->finalizer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2221
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2223
    return-void

    .line 2221
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public native getAlpha()I
.end method

.method public getBidiFlags()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    return v0
.end method

.method public native getColor()I
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z
    .locals 3
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 824
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Path;->ni()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->native_getFillPath(III)Z

    move-result v0

    return v0
.end method

.method public native getFlags()I
.end method

.method public native getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F
.end method

.method public getFontMetrics()Landroid/graphics/Paint$FontMetrics;
    .locals 1

    .prologue
    .line 1228
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 1229
    .local v0, fm:Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 1230
    return-object v0
.end method

.method public native getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I
.end method

.method public getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    .locals 1

    .prologue
    .line 1284
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 1285
    .local v0, fm:Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 1286
    return-object v0
.end method

.method public getFontSpacing()F
    .locals 1

    .prologue
    .line 1317
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public native getHinting()I
.end method

.method public getMaskFilter()Landroid/graphics/MaskFilter;
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method public getPathEffect()Landroid/graphics/PathEffect;
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    return-object v0
.end method

.method public getRasterizer()Landroid/graphics/Rasterizer;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    return-object v0
.end method

.method public getShader()Landroid/graphics/Shader;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public native getStringFontMetrics(Landroid/graphics/Paint$FontMetrics;Ljava/lang/String;)F
.end method

.method public getStringFontMetrics(Ljava/lang/String;)Landroid/graphics/Paint$FontMetrics;
    .locals 1
    .parameter "string"

    .prologue
    .line 1246
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 1247
    .local v0, fm:Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Paint;->getStringFontMetrics(Landroid/graphics/Paint$FontMetrics;Ljava/lang/String;)F

    .line 1248
    return-object v0
.end method

.method public native getStringFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;Ljava/lang/String;)I
.end method

.method public getStringFontMetricsInt(Ljava/lang/String;)Landroid/graphics/Paint$FontMetricsInt;
    .locals 1
    .parameter "string"

    .prologue
    .line 1302
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 1303
    .local v0, fm:Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Paint;->getStringFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;Ljava/lang/String;)I

    .line 1304
    return-object v0
.end method

.method public getStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 2

    .prologue
    .line 780
    sget-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1}, Landroid/graphics/Paint;->native_getStrokeCap(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getStrokeJoin()Landroid/graphics/Paint$Join;
    .locals 2

    .prologue
    .line 799
    sget-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1}, Landroid/graphics/Paint;->native_getStrokeJoin(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public native getStrokeMiter()F
.end method

.method public native getStrokeWidth()F
.end method

.method public getStyle()Landroid/graphics/Paint$Style;
    .locals 2

    .prologue
    .line 669
    sget-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1}, Landroid/graphics/Paint;->native_getStyle(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextAlign()Landroid/graphics/Paint$Align;
    .locals 2

    .prologue
    .line 1057
    sget-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1}, Landroid/graphics/Paint;->native_getTextAlign(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
    .locals 2
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "bounds"

    .prologue
    .line 2187
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 2188
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2190
    :cond_0
    if-nez p4, :cond_1

    .line 2191
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2193
    :cond_1
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Paint;->nativeGetStringBounds(ILjava/lang/String;IILandroid/graphics/Rect;)V

    .line 2194
    return-void
.end method

.method public getTextBounds([CIILandroid/graphics/Rect;)V
    .locals 2
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "bounds"

    .prologue
    .line 2207
    or-int v0, p2, p3

    if-ltz v0, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 2208
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2210
    :cond_1
    if-nez p4, :cond_2

    .line 2211
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2213
    :cond_2
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Paint;->nativeGetCharArrayBounds(I[CIILandroid/graphics/Rect;)V

    .line 2214
    return-void
.end method

.method public getTextGlyphs(Ljava/lang/String;IIIII[C)I
    .locals 8
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "glyphs"

    .prologue
    .line 1732
    if-nez p1, :cond_0

    .line 1733
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1735
    :cond_0
    if-eqz p6, :cond_1

    const/4 v0, 0x1

    if-eq p6, v0, :cond_1

    .line 1736
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown flags value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1738
    :cond_1
    or-int v0, p2, p3

    or-int/2addr v0, p4

    or-int/2addr v0, p5

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    sub-int v1, p5, p3

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p5

    or-int/2addr v0, v1

    if-gez v0, :cond_2

    .line 1741
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1743
    :cond_2
    sub-int v0, p3, p2

    array-length v1, p7

    if-le v0, v1, :cond_3

    .line 1744
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1746
    :cond_3
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Landroid/graphics/Paint;->native_getTextGlyphs(ILjava/lang/String;IIIII[C)I

    move-result v0

    return v0
.end method

.method public getTextLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Landroid/graphics/Paint;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V
    .locals 8
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "y"
    .parameter "path"

    .prologue
    .line 2169
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 2170
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2172
    :cond_0
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual {p6}, Landroid/graphics/Path;->ni()I

    move-result v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Landroid/graphics/Paint;->native_getTextPath(IILjava/lang/String;IIFFI)V

    .line 2174
    return-void
.end method

.method public getTextPath([CIIFFLandroid/graphics/Path;)V
    .locals 8
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "x"
    .parameter "y"
    .parameter "path"

    .prologue
    .line 2147
    or-int v0, p2, p3

    if-ltz v0, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 2148
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2150
    :cond_1
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual {p6}, Landroid/graphics/Path;->ni()I

    move-result v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Landroid/graphics/Paint;->native_getTextPath(II[CIIFFI)V

    .line 2152
    return-void
.end method

.method public getTextRunAdvances(Ljava/lang/CharSequence;IIIII[FI)F
    .locals 10
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "advances"
    .parameter "advancesIndex"

    .prologue
    .line 1822
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/CharSequence;IIIII[FII)F

    move-result v0

    return v0
.end method

.method public getTextRunAdvances(Ljava/lang/CharSequence;IIIII[FII)F
    .locals 13
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "advances"
    .parameter "advancesIndex"
    .parameter "reserved"

    .prologue
    .line 1837
    if-nez p1, :cond_0

    .line 1838
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "text cannot be null"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1840
    :cond_0
    or-int v2, p2, p3

    or-int v2, v2, p4

    or-int v2, v2, p5

    or-int v2, v2, p8

    sub-int v4, p3, p2

    or-int/2addr v2, v4

    sub-int v4, p2, p4

    or-int/2addr v2, v4

    sub-int v4, p5, p3

    or-int/2addr v2, v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v4, v4, p5

    or-int/2addr v4, v2

    if-nez p7, :cond_1

    const/4 v2, 0x0

    :goto_0
    or-int/2addr v2, v4

    if-gez v2, :cond_2

    .line 1845
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1840
    :cond_1
    move-object/from16 v0, p7

    array-length v2, v0

    sub-int v2, v2, p8

    sub-int v6, p3, p2

    sub-int/2addr v2, v6

    goto :goto_0

    .line 1848
    :cond_2
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v3, p1

    .line 1849
    check-cast v3, Ljava/lang/String;

    move-object v2, p0

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIII[FII)F

    move-result v12

    .line 1872
    :goto_1
    return v12

    .line 1852
    :cond_3
    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_4

    instance-of v2, p1, Landroid/text/SpannableString;

    if-eqz v2, :cond_5

    .line 1854
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIII[FII)F

    move-result v12

    goto :goto_1

    .line 1857
    :cond_5
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_6

    move-object v2, p1

    .line 1858
    check-cast v2, Landroid/text/GraphicsOperations;

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object v10, p0

    invoke-interface/range {v2 .. v10}, Landroid/text/GraphicsOperations;->getTextRunAdvances(IIIII[FILandroid/graphics/Paint;)F

    move-result v12

    goto :goto_1

    .line 1861
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_7

    move/from16 v0, p3

    if-ne v0, p2, :cond_8

    .line 1862
    :cond_7
    const/4 v12, 0x0

    goto :goto_1

    .line 1865
    :cond_8
    sub-int v7, p5, p4

    .line 1866
    .local v7, contextLen:I
    sub-int v5, p3, p2

    .line 1867
    .local v5, len:I
    invoke-static {v7}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v3

    .line 1868
    .local v3, buf:[C
    const/4 v2, 0x0

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {p1, v0, v1, v3, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1869
    sub-int v4, p2, p4

    const/4 v6, 0x0

    move-object v2, p0

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FII)F

    move-result v12

    .line 1871
    .local v12, result:F
    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_1
.end method

.method public getTextRunAdvances(Ljava/lang/String;IIIII[FI)F
    .locals 10
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "advances"
    .parameter "advancesIndex"

    .prologue
    .line 1919
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIII[FII)F

    move-result v0

    return v0
.end method

.method public getTextRunAdvances(Ljava/lang/String;IIIII[FII)F
    .locals 16
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "advances"
    .parameter "advancesIndex"
    .parameter "reserved"

    .prologue
    .line 1969
    if-nez p1, :cond_0

    .line 1970
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1972
    :cond_0
    if-eqz p6, :cond_1

    const/4 v2, 0x1

    move/from16 v0, p6

    if-eq v0, v2, :cond_1

    .line 1973
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown flags value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1975
    :cond_1
    or-int v2, p2, p3

    or-int v2, v2, p4

    or-int v2, v2, p5

    or-int v2, v2, p8

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    sub-int v3, p2, p4

    or-int/2addr v2, v3

    sub-int v3, p5, p3

    or-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v3, p5

    or-int/2addr v3, v2

    if-nez p7, :cond_2

    const/4 v2, 0x0

    :goto_0
    or-int/2addr v2, v3

    if-gez v2, :cond_3

    .line 1980
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1975
    :cond_2
    move-object/from16 v0, p7

    array-length v2, v0

    sub-int v2, v2, p8

    sub-int v4, p3, p2

    sub-int/2addr v2, v4

    goto :goto_0

    .line 1983
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_5

    .line 1984
    :cond_4
    const/4 v2, 0x0

    .line 2003
    :goto_1
    return v2

    .line 1987
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_6

    .line 1988
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mNativePaint:I

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v2 .. v11}, Landroid/graphics/Paint;->native_getTextRunAdvances(ILjava/lang/String;IIIII[FII)F

    move-result v2

    goto :goto_1

    .line 1992
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v14

    .line 1993
    .local v14, oldSize:F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1994
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mNativePaint:I

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v2 .. v11}, Landroid/graphics/Paint;->native_getTextRunAdvances(ILjava/lang/String;IIIII[FII)F

    move-result v15

    .line 1996
    .local v15, totalAdvance:F
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1998
    if-eqz p7, :cond_7

    .line 1999
    move/from16 v13, p8

    .local v13, i:I
    sub-int v2, p3, p2

    add-int v12, v13, v2

    .local v12, e:I
    :goto_2
    if-ge v13, v12, :cond_7

    .line 2000
    aget v2, p7, v13

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, p7, v13

    .line 1999
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 2003
    .end local v12           #e:I
    .end local v13           #i:I
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v15

    goto :goto_1
.end method

.method public getTextRunAdvances([CIIIII[FI)F
    .locals 10
    .parameter "chars"
    .parameter "index"
    .parameter "count"
    .parameter "contextIndex"
    .parameter "contextCount"
    .parameter "flags"
    .parameter "advances"
    .parameter "advancesIndex"

    .prologue
    .line 1760
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FII)F

    move-result v0

    return v0
.end method

.method public getTextRunAdvances([CIIIII[FII)F
    .locals 15
    .parameter "chars"
    .parameter "index"
    .parameter "count"
    .parameter "contextIndex"
    .parameter "contextCount"
    .parameter "flags"
    .parameter "advances"
    .parameter "advancesIndex"
    .parameter "reserved"

    .prologue
    .line 1775
    if-nez p1, :cond_0

    .line 1776
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1778
    :cond_0
    if-eqz p6, :cond_1

    const/4 v1, 0x1

    move/from16 v0, p6

    if-eq v0, v1, :cond_1

    .line 1779
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown flags value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1781
    :cond_1
    or-int v1, p2, p3

    or-int v1, v1, p4

    or-int v1, v1, p5

    or-int v1, v1, p8

    sub-int v2, p2, p4

    or-int/2addr v1, v2

    sub-int v2, p5, p3

    or-int/2addr v1, v2

    add-int v2, p4, p5

    add-int v3, p2, p3

    sub-int/2addr v2, v3

    or-int/2addr v1, v2

    move-object/from16 v0, p1

    array-length v2, v0

    add-int v3, p4, p5

    sub-int/2addr v2, v3

    or-int/2addr v2, v1

    if-nez p7, :cond_2

    const/4 v1, 0x0

    :goto_0
    or-int/2addr v1, v2

    if-gez v1, :cond_3

    .line 1787
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1781
    :cond_2
    move-object/from16 v0, p7

    array-length v1, v0

    add-int v3, p8, p3

    sub-int/2addr v1, v3

    goto :goto_0

    .line 1790
    :cond_3
    move-object/from16 v0, p1

    array-length v1, v0

    if-eqz v1, :cond_4

    if-nez p3, :cond_5

    .line 1791
    :cond_4
    const/4 v1, 0x0

    .line 1809
    :goto_1
    return v1

    .line 1793
    :cond_5
    iget-boolean v1, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v1, :cond_6

    .line 1794
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->native_getTextRunAdvances(I[CIIIII[FII)F

    move-result v1

    goto :goto_1

    .line 1798
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v13

    .line 1799
    .local v13, oldSize:F
    iget v1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v13

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1800
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->native_getTextRunAdvances(I[CIIIII[FII)F

    move-result v14

    .line 1802
    .local v14, res:F
    invoke-virtual {p0, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1804
    if-eqz p7, :cond_7

    .line 1805
    move/from16 v12, p8

    .local v12, i:I
    add-int v11, v12, p3

    .local v11, e:I
    :goto_2
    if-ge v12, v11, :cond_7

    .line 1806
    aget v1, p7, v12

    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v2

    aput v1, p7, v12

    .line 1805
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1809
    .end local v11           #e:I
    .end local v12           #i:I
    :cond_7
    iget v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v14

    goto :goto_1
.end method

.method public getTextRunCursor(Ljava/lang/CharSequence;IIIII)I
    .locals 8
    .parameter "text"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "offset"
    .parameter "cursorOpt"

    .prologue
    const/4 v2, 0x0

    .line 2075
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_1

    .line 2077
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/String;IIIII)I

    move-result v7

    .line 2090
    :goto_0
    return v7

    .line 2080
    :cond_1
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 2081
    check-cast v0, Landroid/text/GraphicsOperations;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Landroid/text/GraphicsOperations;->getTextRunCursor(IIIIILandroid/graphics/Paint;)I

    move-result v7

    goto :goto_0

    .line 2085
    :cond_2
    sub-int v3, p3, p2

    .line 2086
    .local v3, contextLen:I
    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    .line 2087
    .local v1, buf:[C
    invoke-static {p1, p2, p3, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2088
    sub-int v5, p5, p2

    move-object v0, p0

    move v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v7

    .line 2089
    .local v7, result:I
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0
.end method

.method public getTextRunCursor(Ljava/lang/String;IIIII)I
    .locals 8
    .parameter "text"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "offset"
    .parameter "cursorOpt"

    .prologue
    .line 2121
    or-int v0, p2, p3

    or-int/2addr v0, p5

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p2

    or-int/2addr v0, v1

    sub-int v1, p3, p5

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    or-int/2addr v0, p6

    if-ltz v0, :cond_0

    const/4 v0, 0x4

    if-le p6, v0, :cond_1

    .line 2125
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2128
    :cond_1
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/graphics/Paint;->native_getTextRunCursor(ILjava/lang/String;IIIII)I

    move-result v0

    return v0
.end method

.method public getTextRunCursor([CIIIII)I
    .locals 9
    .parameter "text"
    .parameter "contextStart"
    .parameter "contextLength"
    .parameter "flags"
    .parameter "offset"
    .parameter "cursorOpt"

    .prologue
    .line 2034
    add-int v8, p2, p3

    .line 2035
    .local v8, contextEnd:I
    or-int v0, p2, v8

    or-int/2addr v0, p5

    sub-int v1, v8, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p2

    or-int/2addr v0, v1

    sub-int v1, v8, p5

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, v8

    or-int/2addr v0, v1

    or-int/2addr v0, p6

    if-ltz v0, :cond_0

    const/4 v0, 0x4

    if-le p6, v0, :cond_1

    .line 2039
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2042
    :cond_1
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/graphics/Paint;->native_getTextRunCursor(I[CIIIII)I

    move-result v0

    return v0
.end method

.method public native getTextScaleX()F
.end method

.method public native getTextSize()F
.end method

.method public native getTextSkewX()F
.end method

.method public getTextWidths(Ljava/lang/CharSequence;II[F)I
    .locals 4
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "widths"

    .prologue
    const/4 v1, 0x0

    .line 1628
    if-nez p1, :cond_0

    .line 1629
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1631
    :cond_0
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1

    .line 1632
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1634
    :cond_1
    sub-int v2, p3, p2

    array-length v3, p4

    if-le v2, v3, :cond_2

    .line 1635
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1638
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    if-ne p2, p3, :cond_4

    .line 1657
    .end local p1
    :cond_3
    :goto_0
    return v1

    .line 1641
    .restart local p1
    :cond_4
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 1642
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v1

    goto :goto_0

    .line 1644
    .restart local p1
    :cond_5
    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_6

    instance-of v2, p1, Landroid/text/SpannableString;

    if-eqz v2, :cond_7

    .line 1646
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v1

    goto :goto_0

    .line 1648
    :cond_7
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_8

    .line 1649
    check-cast p1, Landroid/text/GraphicsOperations;

    .end local p1
    invoke-interface {p1, p2, p3, p4, p0}, Landroid/text/GraphicsOperations;->getTextWidths(II[FLandroid/graphics/Paint;)I

    move-result v1

    goto :goto_0

    .line 1653
    .restart local p1
    :cond_8
    sub-int v2, p3, p2

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 1654
    .local v0, buf:[C
    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1655
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v1, v2, p4}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 1656
    .local v1, result:I
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0
.end method

.method public getTextWidths(Ljava/lang/String;II[F)I
    .locals 5
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "widths"

    .prologue
    .line 1671
    if-nez p1, :cond_0

    .line 1672
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "text cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1674
    :cond_0
    or-int v3, p2, p3

    sub-int v4, p3, p2

    or-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, p3

    or-int/2addr v3, v4

    if-gez v3, :cond_1

    .line 1675
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1677
    :cond_1
    sub-int v3, p3, p2

    array-length v4, p4

    if-le v3, v4, :cond_2

    .line 1678
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1681
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    if-ne p2, p3, :cond_5

    .line 1682
    :cond_3
    const/4 v2, 0x0

    .line 1695
    :cond_4
    :goto_0
    return v2

    .line 1684
    :cond_5
    iget-boolean v3, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v3, :cond_6

    .line 1685
    iget v3, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v3, p1, p2, p3, p4}, Landroid/graphics/Paint;->native_getTextWidths(ILjava/lang/String;II[F)I

    move-result v2

    goto :goto_0

    .line 1688
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    .line 1689
    .local v1, oldSize:F
    iget v3, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v3, v1

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1690
    iget v3, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v3, p1, p2, p3, p4}, Landroid/graphics/Paint;->native_getTextWidths(ILjava/lang/String;II[F)I

    move-result v2

    .line 1691
    .local v2, res:I
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1692
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 1693
    aget v3, p4, v0

    iget v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v3, v4

    aput v3, p4, v0

    .line 1692
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getTextWidths(Ljava/lang/String;[F)I
    .locals 2
    .parameter "text"
    .parameter "widths"

    .prologue
    .line 1707
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v0

    return v0
.end method

.method public getTextWidths([CII[F)I
    .locals 5
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "widths"

    .prologue
    .line 1591
    if-nez p1, :cond_0

    .line 1592
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "text cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1594
    :cond_0
    or-int v3, p2, p3

    if-ltz v3, :cond_1

    add-int v3, p2, p3

    array-length v4, p1

    if-gt v3, v4, :cond_1

    array-length v3, p4

    if-le p3, v3, :cond_2

    .line 1596
    :cond_1
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1599
    :cond_2
    array-length v3, p1

    if-eqz v3, :cond_3

    if-nez p3, :cond_5

    .line 1600
    :cond_3
    const/4 v2, 0x0

    .line 1613
    :cond_4
    :goto_0
    return v2

    .line 1602
    :cond_5
    iget-boolean v3, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v3, :cond_6

    .line 1603
    iget v3, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v3, p1, p2, p3, p4}, Landroid/graphics/Paint;->native_getTextWidths(I[CII[F)I

    move-result v2

    goto :goto_0

    .line 1606
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    .line 1607
    .local v1, oldSize:F
    iget v3, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v3, v1

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1608
    iget v3, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v3, p1, p2, p3, p4}, Landroid/graphics/Paint;->native_getTextWidths(I[CII[F)I

    move-result v2

    .line 1609
    .local v2, res:I
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1610
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 1611
    aget v3, p4, v0

    iget v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v3, v4

    aput v3, p4, v0

    .line 1610
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getXfermode()Landroid/graphics/Xfermode;
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method public final isAntiAlias()Z
    .locals 1

    .prologue
    .line 512
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDither()Z
    .locals 1

    .prologue
    .line 536
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFakeBoldText()Z
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFilterBitmap()Z
    .locals 1

    .prologue
    .line 647
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLinearText()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 558
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isStrikeThruText()Z
    .locals 1

    .prologue
    .line 610
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSubpixelText()Z
    .locals 1

    .prologue
    .line 576
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isUnderlineText()Z
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public measureText(Ljava/lang/CharSequence;II)F
    .locals 5
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    .line 1418
    if-nez p1, :cond_0

    .line 1419
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1421
    :cond_0
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1

    .line 1422
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1425
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_2

    if-ne p2, p3, :cond_3

    .line 1426
    :cond_2
    const/4 v1, 0x0

    .line 1443
    .end local p1
    :goto_0
    return v1

    .line 1428
    .restart local p1
    :cond_3
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1429
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    goto :goto_0

    .line 1431
    .restart local p1
    :cond_4
    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_5

    instance-of v2, p1, Landroid/text/SpannableString;

    if-eqz v2, :cond_6

    .line 1433
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    goto :goto_0

    .line 1435
    :cond_6
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_7

    .line 1436
    check-cast p1, Landroid/text/GraphicsOperations;

    .end local p1
    invoke-interface {p1, p2, p3, p0}, Landroid/text/GraphicsOperations;->measureText(IILandroid/graphics/Paint;)F

    move-result v1

    goto :goto_0

    .line 1439
    .restart local p1
    :cond_7
    sub-int v2, p3, p2

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 1440
    .local v0, buf:[C
    invoke-static {p1, p2, p3, v0, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1441
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v4, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 1442
    .local v1, result:F
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0
.end method

.method public measureText(Ljava/lang/String;)F
    .locals 4
    .parameter "text"

    .prologue
    .line 1391
    if-nez p1, :cond_0

    .line 1392
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1395
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1396
    const/4 v2, 0x0

    .line 1404
    :goto_0
    return v2

    .line 1399
    :cond_1
    iget-boolean v2, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_2

    invoke-direct {p0, p1}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;)F

    move-result v2

    goto :goto_0

    .line 1400
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1401
    .local v0, oldSize:F
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1402
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;)F

    move-result v1

    .line 1403
    .local v1, w:F
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1404
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v1

    goto :goto_0
.end method

.method public measureText(Ljava/lang/String;II)F
    .locals 4
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1361
    if-nez p1, :cond_0

    .line 1362
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1364
    :cond_0
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1

    .line 1365
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1368
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    if-ne p2, p3, :cond_3

    .line 1369
    :cond_2
    const/4 v2, 0x0

    .line 1379
    :goto_0
    return v2

    .line 1371
    :cond_3
    iget-boolean v2, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_4

    .line 1372
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;II)F

    move-result v2

    goto :goto_0

    .line 1375
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1376
    .local v0, oldSize:F
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1377
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;II)F

    move-result v1

    .line 1378
    .local v1, w:F
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1379
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v1

    goto :goto_0
.end method

.method public measureText([CII)F
    .locals 4
    .parameter "text"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 1329
    if-nez p1, :cond_0

    .line 1330
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1332
    :cond_0
    or-int v2, p2, p3

    if-ltz v2, :cond_1

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_2

    .line 1333
    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1336
    :cond_2
    array-length v2, p1

    if-eqz v2, :cond_3

    if-nez p3, :cond_4

    .line 1337
    :cond_3
    const/4 v2, 0x0

    .line 1347
    :goto_0
    return v2

    .line 1339
    :cond_4
    iget-boolean v2, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_5

    .line 1340
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/Paint;->native_measureText([CII)F

    move-result v2

    goto :goto_0

    .line 1343
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1344
    .local v0, oldSize:F
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1345
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/Paint;->native_measureText([CII)F

    move-result v1

    .line 1346
    .local v1, w:F
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1347
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v1

    goto :goto_0
.end method

.method public reset()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 372
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0}, Landroid/graphics/Paint;->native_reset(I)V

    .line 373
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 380
    iput-object v1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 381
    iput-object v1, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 382
    iput-object v1, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 383
    iput-object v1, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    .line 384
    iput-object v1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 385
    iput-object v1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 386
    iput-object v1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 388
    iput-boolean v3, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 389
    iput v4, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 390
    iput v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 392
    iput-boolean v3, p0, Landroid/graphics/Paint;->hasShadow:Z

    .line 393
    iput v2, p0, Landroid/graphics/Paint;->shadowDx:F

    .line 394
    iput v2, p0, Landroid/graphics/Paint;->shadowDy:F

    .line 395
    iput v2, p0, Landroid/graphics/Paint;->shadowRadius:F

    .line 396
    iput v3, p0, Landroid/graphics/Paint;->shadowColor:I

    .line 398
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 399
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextLocale(Ljava/util/Locale;)V

    .line 400
    return-void
.end method

.method public set(Landroid/graphics/Paint;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 408
    if-eq p0, p1, :cond_0

    .line 410
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p1, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_set(II)V

    .line 411
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    .line 413
    :cond_0
    return-void
.end method

.method public setARGB(IIII)V
    .locals 2
    .parameter "a"
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 730
    shl-int/lit8 v0, p1, 0x18

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p3, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p4

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 731
    return-void
.end method

.method public native setAlpha(I)V
.end method

.method public native setAntiAlias(Z)V
.end method

.method public setBidiFlags(I)V
    .locals 3
    .parameter "flags"

    .prologue
    .line 470
    and-int/lit8 p1, p1, 0x7

    .line 471
    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    .line 472
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown bidi flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_0
    iput p1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 475
    return-void
.end method

.method public native setColor(I)V
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    .locals 2
    .parameter "filter"

    .prologue
    .line 870
    const/4 v0, 0x0

    .line 871
    .local v0, filterNative:I
    if-eqz p1, :cond_0

    .line 872
    iget v0, p1, Landroid/graphics/ColorFilter;->native_instance:I

    .line 873
    :cond_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setColorFilter(II)I

    .line 874
    iput-object p1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 875
    return-object p1
.end method

.method public setCompatibilityScaling(F)V
    .locals 5
    .parameter "factor"

    .prologue
    const/high16 v4, 0x3f80

    .line 444
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 445
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 446
    iput v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v4, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 452
    :goto_0
    return-void

    .line 448
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 449
    iput p1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 450
    div-float v0, v4, p1

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    goto :goto_0
.end method

.method public native setDither(Z)V
.end method

.method public native setFakeBoldText(Z)V
.end method

.method public native setFilterBitmap(Z)V
.end method

.method public native setFlags(I)V
.end method

.method public native setHinting(I)V
.end method

.method public native setLinearText(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
    .locals 2
    .parameter "maskfilter"

    .prologue
    .line 953
    const/4 v0, 0x0

    .line 954
    .local v0, maskfilterNative:I
    if-eqz p1, :cond_0

    .line 955
    iget v0, p1, Landroid/graphics/MaskFilter;->native_instance:I

    .line 957
    :cond_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setMaskFilter(II)I

    .line 958
    iput-object p1, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 959
    return-object p1
.end method

.method public setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;
    .locals 2
    .parameter "effect"

    .prologue
    .line 924
    const/4 v0, 0x0

    .line 925
    .local v0, effectNative:I
    if-eqz p1, :cond_0

    .line 926
    iget v0, p1, Landroid/graphics/PathEffect;->native_instance:I

    .line 928
    :cond_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setPathEffect(II)I

    .line 929
    iput-object p1, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 930
    return-object p1
.end method

.method public setRasterizer(Landroid/graphics/Rasterizer;)Landroid/graphics/Rasterizer;
    .locals 2
    .parameter "rasterizer"

    .prologue
    .line 1015
    const/4 v0, 0x0

    .line 1016
    .local v0, rasterizerNative:I
    if-eqz p1, :cond_0

    .line 1017
    iget v0, p1, Landroid/graphics/Rasterizer;->native_instance:I

    .line 1019
    :cond_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setRasterizer(II)I

    .line 1020
    iput-object p1, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    .line 1021
    return-object p1
.end method

.method public setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .locals 2
    .parameter "shader"

    .prologue
    .line 846
    const/4 v0, 0x0

    .line 847
    .local v0, shaderNative:I
    if-eqz p1, :cond_0

    .line 848
    iget v0, p1, Landroid/graphics/Shader;->native_instance:I

    .line 849
    :cond_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setShader(II)I

    .line 850
    iput-object p1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 851
    return-object p1
.end method

.method public setShadowLayer(FFFI)V
    .locals 1
    .parameter "radius"
    .parameter "dx"
    .parameter "dy"
    .parameter "color"

    .prologue
    .line 1030
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/graphics/Paint;->hasShadow:Z

    .line 1031
    iput p1, p0, Landroid/graphics/Paint;->shadowRadius:F

    .line 1032
    iput p2, p0, Landroid/graphics/Paint;->shadowDx:F

    .line 1033
    iput p3, p0, Landroid/graphics/Paint;->shadowDy:F

    .line 1034
    iput p4, p0, Landroid/graphics/Paint;->shadowColor:I

    .line 1035
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/Paint;->nSetShadowLayer(FFFI)V

    .line 1036
    return-void

    .line 1030
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native setStrikeThruText(Z)V
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 2
    .parameter "cap"

    .prologue
    .line 790
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p1, Landroid/graphics/Paint$Cap;->nativeInt:I

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_setStrokeCap(II)V

    .line 791
    return-void
.end method

.method public setStrokeJoin(Landroid/graphics/Paint$Join;)V
    .locals 2
    .parameter "join"

    .prologue
    .line 809
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p1, Landroid/graphics/Paint$Join;->nativeInt:I

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_setStrokeJoin(II)V

    .line 810
    return-void
.end method

.method public native setStrokeMiter(F)V
.end method

.method public native setStrokeWidth(F)V
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 2
    .parameter "style"

    .prologue
    .line 680
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p1, Landroid/graphics/Paint$Style;->nativeInt:I

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_setStyle(II)V

    .line 681
    return-void
.end method

.method public native setSubpixelText(Z)V
.end method

.method public setTextAlign(Landroid/graphics/Paint$Align;)V
    .locals 2
    .parameter "align"

    .prologue
    .line 1069
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p1, Landroid/graphics/Paint$Align;->nativeInt:I

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_setTextAlign(II)V

    .line 1070
    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .locals 2
    .parameter "locale"

    .prologue
    .line 1108
    if-nez p1, :cond_0

    .line 1109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "locale cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1111
    :cond_0
    iget-object v0, p0, Landroid/graphics/Paint;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1114
    :goto_0
    return-void

    .line 1112
    :cond_1
    iput-object p1, p0, Landroid/graphics/Paint;->mLocale:Ljava/util/Locale;

    .line 1113
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_setTextLocale(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public native setTextScaleX(F)V
.end method

.method public native setTextSize(F)V
.end method

.method public native setTextSkewX(F)V
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 2
    .parameter "typeface"

    .prologue
    .line 984
    const/4 v0, 0x0

    .line 985
    .local v0, typefaceNative:I
    if-eqz p1, :cond_0

    .line 986
    iget v0, p1, Landroid/graphics/Typeface;->native_instance:I

    .line 988
    :cond_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setTypeface(II)I

    .line 989
    iput-object p1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 990
    return-object p1
.end method

.method public native setUnderlineText(Z)V
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    .locals 2
    .parameter "xfermode"

    .prologue
    .line 897
    const/4 v0, 0x0

    .line 898
    .local v0, xfermodeNative:I
    if-eqz p1, :cond_0

    .line 899
    iget v0, p1, Landroid/graphics/Xfermode;->native_instance:I

    .line 900
    :cond_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setXfermode(II)I

    .line 901
    iput-object p1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 902
    return-object p1
.end method
