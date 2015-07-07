.class public Landroid/graphics/drawable/ClipDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ClipDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ClipDrawable$1;,
        Landroid/graphics/drawable/ClipDrawable$ClipState;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x1

.field public static final VERTICAL:I = 0x2


# instance fields
.field private mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/ClipDrawable$ClipState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 322
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 323
    new-instance v0, Landroid/graphics/drawable/ClipDrawable$ClipState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/ClipDrawable$ClipState;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/graphics/drawable/ClipDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    .line 324
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;Landroid/graphics/drawable/ClipDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/ClipDrawable$ClipState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/graphics/drawable/ClipDrawable$1;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "gravity"    # I
    .param p3, "orientation"    # I

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    .line 68
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iput-object p1, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 69
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iput p2, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    .line 70
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iput p3, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 217
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    if-nez v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v4, p0, Landroid/graphics/drawable/ClipDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 222
    .local v4, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 223
    .local v3, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getLevel()I

    move-result v8

    .line 224
    .local v8, "level":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 225
    .local v1, "w":I
    const/4 v7, 0x0

    .line 226
    .local v7, "iw":I
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 227
    add-int/lit8 v0, v1, 0x0

    rsub-int v9, v8, 0x2710

    mul-int/2addr v0, v9

    div-int/lit16 v0, v0, 0x2710

    sub-int/2addr v1, v0

    .line 229
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 230
    .local v2, "h":I
    const/4 v6, 0x0

    .line 231
    .local v6, "ih":I
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 232
    add-int/lit8 v0, v2, 0x0

    rsub-int v9, v8, 0x2710

    mul-int/2addr v0, v9

    div-int/lit16 v0, v0, 0x2710

    sub-int/2addr v2, v0

    .line 234
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getLayoutDirection()I

    move-result v5

    .line 235
    .local v5, "layoutDirection":I
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 237
    if-lez v1, :cond_0

    if-lez v2, :cond_0

    .line 238
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 239
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 240
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 241
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget v1, v1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v1, v1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    invoke-virtual {v0}, Landroid/graphics/drawable/ClipDrawable$ClipState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mChangingConfigurations:I

    .line 259
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    .line 261
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 153
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 10
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 84
    sget-object v6, Lcom/android/internal/R$styleable;->ClipDrawable:[I

    invoke-static {p1, p4, p3, v6}, Landroid/graphics/drawable/ClipDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 90
    .local v3, "orientation":I
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 91
    .local v2, "g":I
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 93
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 97
    .local v4, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    if-eq v5, v7, :cond_2

    if-ne v5, v9, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v4, :cond_2

    .line 98
    :cond_1
    if-ne v5, v8, :cond_0

    .line 101
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 104
    :cond_2
    if-nez v1, :cond_3

    .line 105
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "No drawable specified for <clip>"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 108
    :cond_3
    iget-object v6, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iput-object v1, v6, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 109
    iget-object v6, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iput v3, v6, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    .line 110
    iget-object v6, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iput v2, v6, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    .line 112
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 113
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 120
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 211
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 212
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 204
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 205
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->invalidateSelf()V

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 199
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 128
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 131
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 164
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 165
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 174
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 175
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 267
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 268
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 269
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 179
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 180
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 184
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 185
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 159
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 136
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 139
    :cond_0
    return-void
.end method
