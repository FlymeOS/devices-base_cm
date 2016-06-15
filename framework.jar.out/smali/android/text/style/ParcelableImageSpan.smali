.class public Landroid/text/style/ParcelableImageSpan;
.super Landroid/text/style/ReplacementSpan;
.source "ParcelableImageSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final ALIGN_BASELINE:I = 0x1

.field public static final ALIGN_BOTTOM:I = 0x0

.field public static final ALIGN_CENTER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ParcelableImageSpan"


# instance fields
.field private mDrawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private final mInsetBottom:I

.field private final mInsetLeft:I

.field private final mInsetRight:I

.field private final mInsetTop:I

.field private final mSystemResId:I

.field private final mVerticalAlignment:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "systemResId"    # I

    .prologue
    .line 48
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/text/style/ParcelableImageSpan;-><init>(II)V

    .line 49
    return-void
.end method

.method public constructor <init>(II)V
    .locals 7
    .param p1, "systemResId"    # I
    .param p2, "verticalAlignment"    # I

    .prologue
    const/4 v3, 0x0

    .line 52
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/text/style/ParcelableImageSpan;-><init>(IIIIII)V

    .line 53
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "systemResId"    # I
    .param p2, "verticalAlignment"    # I
    .param p3, "insetLeft"    # I
    .param p4, "insetTop"    # I
    .param p5, "insetRight"    # I
    .param p6, "insetBottom"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 57
    iput p2, p0, Landroid/text/style/ParcelableImageSpan;->mVerticalAlignment:I

    .line 58
    iput p1, p0, Landroid/text/style/ParcelableImageSpan;->mSystemResId:I

    .line 59
    iput p3, p0, Landroid/text/style/ParcelableImageSpan;->mInsetLeft:I

    .line 60
    iput p4, p0, Landroid/text/style/ParcelableImageSpan;->mInsetTop:I

    .line 61
    iput p5, p0, Landroid/text/style/ParcelableImageSpan;->mInsetRight:I

    .line 62
    iput p6, p0, Landroid/text/style/ParcelableImageSpan;->mInsetBottom:I

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/ParcelableImageSpan;->mVerticalAlignment:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/ParcelableImageSpan;->mSystemResId:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/ParcelableImageSpan;->mInsetLeft:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/ParcelableImageSpan;->mInsetTop:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/ParcelableImageSpan;->mInsetRight:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/ParcelableImageSpan;->mInsetBottom:I

    .line 72
    return-void
.end method

.method private getCachedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 160
    iget-object v1, p0, Landroid/text/style/ParcelableImageSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 161
    .local v1, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    const/4 v0, 0x0

    .line 163
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 166
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-nez v0, :cond_1

    .line 167
    invoke-virtual {p0}, Landroid/text/style/ParcelableImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 168
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/text/style/ParcelableImageSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 171
    :cond_1
    return-object v0
.end method

.method private getPaintFontMetricsInt(Landroid/graphics/Paint;)Landroid/graphics/Paint$FontMetricsInt;
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 131
    iget-object v0, p0, Landroid/text/style/ParcelableImageSpan;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/ParcelableImageSpan;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 136
    :goto_0
    iget-object v0, p0, Landroid/text/style/ParcelableImageSpan;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    return-object v0

    .line 134
    :cond_0
    iget-object v0, p0, Landroid/text/style/ParcelableImageSpan;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/text/style/ParcelableImageSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 144
    .local v0, "b":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 146
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p8, v3

    .line 147
    .local v2, "transY":I
    iget v3, p0, Landroid/text/style/ParcelableImageSpan;->mVerticalAlignment:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 148
    invoke-direct {p0, p9}, Landroid/text/style/ParcelableImageSpan;->getPaintFontMetricsInt(Landroid/graphics/Paint;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 149
    .local v1, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v4, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    .line 154
    .end local v1    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    :cond_0
    :goto_0
    int-to-float v3, v2

    invoke-virtual {p1, p5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 155
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 157
    return-void

    .line 150
    :cond_1
    iget v3, p0, Landroid/text/style/ParcelableImageSpan;->mVerticalAlignment:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 151
    invoke-direct {p0, p9}, Landroid/text/style/ParcelableImageSpan;->getPaintFontMetricsInt(Landroid/graphics/Paint;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 9

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Landroid/text/style/ParcelableImageSpan;->mSystemResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 78
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 79
    .local v8, "width":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 80
    .local v7, "height":I
    iget v2, p0, Landroid/text/style/ParcelableImageSpan;->mInsetLeft:I

    if-nez v2, :cond_0

    iget v2, p0, Landroid/text/style/ParcelableImageSpan;->mInsetTop:I

    if-nez v2, :cond_0

    iget v2, p0, Landroid/text/style/ParcelableImageSpan;->mInsetRight:I

    if-nez v2, :cond_0

    iget v2, p0, Landroid/text/style/ParcelableImageSpan;->mInsetBottom:I

    if-eqz v2, :cond_1

    .line 81
    :cond_0
    iget v2, p0, Landroid/text/style/ParcelableImageSpan;->mInsetLeft:I

    iget v3, p0, Landroid/text/style/ParcelableImageSpan;->mInsetRight:I

    add-int/2addr v2, v3

    add-int/2addr v8, v2

    .line 82
    iget v2, p0, Landroid/text/style/ParcelableImageSpan;->mInsetTop:I

    iget v3, p0, Landroid/text/style/ParcelableImageSpan;->mInsetBottom:I

    add-int/2addr v2, v3

    add-int/2addr v7, v2

    .line 83
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget v2, p0, Landroid/text/style/ParcelableImageSpan;->mInsetLeft:I

    iget v3, p0, Landroid/text/style/ParcelableImageSpan;->mInsetTop:I

    iget v4, p0, Landroid/text/style/ParcelableImageSpan;->mInsetRight:I

    iget v5, p0, Landroid/text/style/ParcelableImageSpan;->mInsetBottom:I

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v2, v3, v8, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 90
    .end local v7    # "height":I
    .end local v8    # "width":I
    :goto_1
    return-object v0

    .line 87
    :catch_0
    move-exception v6

    .line 88
    .local v6, "e":Ljava/lang/Exception;
    :goto_2
    const-string v2, "ParcelableImageSpan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/text/style/ParcelableImageSpan;->mSystemResId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 87
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "height":I
    .restart local v8    # "width":I
    :cond_1
    move-object v0, v1

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 126
    invoke-direct {p0}, Landroid/text/style/ParcelableImageSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 127
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    return v1
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 111
    const/16 v0, 0x19

    return v0
.end method

.method public getVerticalAlignment()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Landroid/text/style/ParcelableImageSpan;->mVerticalAlignment:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/text/style/ParcelableImageSpan;->getVerticalAlignment()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Landroid/text/style/ParcelableImageSpan;->mSystemResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Landroid/text/style/ParcelableImageSpan;->mInsetLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Landroid/text/style/ParcelableImageSpan;->mInsetTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Landroid/text/style/ParcelableImageSpan;->mInsetRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v0, p0, Landroid/text/style/ParcelableImageSpan;->mInsetBottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return-void
.end method
