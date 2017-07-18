.class public Landroid/app/assist/AssistStructure$ViewNode;
.super Ljava/lang/Object;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewNode"
.end annotation


# static fields
.field static final FLAGS_ACCESSIBILITY_FOCUSED:I = 0x1000

.field static final FLAGS_ACTIVATED:I = 0x2000

.field static final FLAGS_ALL_CONTROL:I = -0x100000

.field static final FLAGS_ASSIST_BLOCKED:I = 0x80

.field static final FLAGS_CHECKABLE:I = 0x100

.field static final FLAGS_CHECKED:I = 0x200

.field static final FLAGS_CLICKABLE:I = 0x400

.field static final FLAGS_CONTEXT_CLICKABLE:I = 0x4000

.field static final FLAGS_DISABLED:I = 0x1

.field static final FLAGS_FOCUSABLE:I = 0x10

.field static final FLAGS_FOCUSED:I = 0x20

.field static final FLAGS_HAS_ALPHA:I = 0x20000000

.field static final FLAGS_HAS_CHILDREN:I = 0x100000

.field static final FLAGS_HAS_COMPLEX_TEXT:I = 0x800000

.field static final FLAGS_HAS_CONTENT_DESCRIPTION:I = 0x2000000

.field static final FLAGS_HAS_ELEVATION:I = 0x10000000

.field static final FLAGS_HAS_EXTRAS:I = 0x400000

.field static final FLAGS_HAS_ID:I = 0x200000

.field static final FLAGS_HAS_LARGE_COORDS:I = 0x4000000

.field static final FLAGS_HAS_MATRIX:I = 0x40000000

.field static final FLAGS_HAS_SCROLL:I = 0x8000000

.field static final FLAGS_HAS_TEXT:I = 0x1000000

.field static final FLAGS_LONG_CLICKABLE:I = 0x800

.field static final FLAGS_SELECTED:I = 0x40

.field static final FLAGS_VISIBILITY_MASK:I = 0xc

.field public static final TEXT_COLOR_UNDEFINED:I = 0x1

.field public static final TEXT_STYLE_BOLD:I = 0x1

.field public static final TEXT_STYLE_ITALIC:I = 0x2

.field public static final TEXT_STYLE_STRIKE_THRU:I = 0x8

.field public static final TEXT_STYLE_UNDERLINE:I = 0x4


# instance fields
.field mAlpha:F

.field mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

.field mClassName:Ljava/lang/String;

.field mContentDescription:Ljava/lang/CharSequence;

.field mElevation:F

.field mExtras:Landroid/os/Bundle;

.field mFlags:I

.field mHeight:I

.field mId:I

.field mIdEntry:Ljava/lang/String;

.field mIdPackage:Ljava/lang/String;

.field mIdType:Ljava/lang/String;

.field mMatrix:Landroid/graphics/Matrix;

.field mScrollX:I

.field mScrollY:I

.field mText:Landroid/app/assist/AssistStructure$ViewNodeText;

.field mWidth:I

.field mX:I

.field mY:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    .line 526
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    .line 565
    return-void
.end method

.method constructor <init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V
    .locals 9
    .param p1, "reader"    # Landroid/app/assist/AssistStructure$ParcelTransferReader;
    .param p2, "nestingLevel"    # I

    .prologue
    const/4 v7, 0x0

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    const/4 v6, -0x1

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    .line 526
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    .line 569
    const v6, 0x22222222

    invoke-virtual {p1, v6, p2}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->readParcel(II)Landroid/os/Parcel;

    move-result-object v3

    .line 570
    .local v3, "in":Landroid/os/Parcel;
    iget v6, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadViews:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadViews:I

    .line 571
    iget-object v4, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mStringReader:Landroid/os/PooledStringReader;

    .line 572
    .local v4, "preader":Landroid/os/PooledStringReader;
    invoke-virtual {v4}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    .line 573
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 574
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 575
    .local v1, "flags":I
    const/high16 v6, 0x200000

    and-int/2addr v6, v1

    if-eqz v6, :cond_0

    .line 576
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    .line 577
    iget v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    if-eqz v6, :cond_0

    .line 578
    invoke-virtual {v4}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    .line 579
    iget-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 580
    invoke-virtual {v4}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    .line 581
    invoke-virtual {v4}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    .line 585
    :cond_0
    const/high16 v6, 0x4000000

    and-int/2addr v6, v1

    if-eqz v6, :cond_8

    .line 586
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    .line 587
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    .line 588
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    .line 589
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    .line 598
    :goto_0
    const/high16 v6, 0x8000000

    and-int/2addr v6, v1

    if-eqz v6, :cond_1

    .line 599
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    .line 600
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    .line 602
    :cond_1
    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v6, v1

    if-eqz v6, :cond_2

    .line 603
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    .line 604
    iget-object v6, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTmpMatrix:[F

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 605
    iget-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    iget-object v8, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTmpMatrix:[F

    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->setValues([F)V

    .line 607
    :cond_2
    const/high16 v6, 0x10000000

    and-int/2addr v6, v1

    if-eqz v6, :cond_3

    .line 608
    invoke-virtual {v3}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    .line 610
    :cond_3
    const/high16 v6, 0x20000000

    and-int/2addr v6, v1

    if-eqz v6, :cond_4

    .line 611
    invoke-virtual {v3}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    .line 613
    :cond_4
    const/high16 v6, 0x2000000

    and-int/2addr v6, v1

    if-eqz v6, :cond_5

    .line 614
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    iput-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    .line 616
    :cond_5
    const/high16 v6, 0x1000000

    and-int/2addr v6, v1

    if-eqz v6, :cond_6

    .line 617
    new-instance v8, Landroid/app/assist/AssistStructure$ViewNodeText;

    const/high16 v6, 0x800000

    and-int/2addr v6, v1

    if-nez v6, :cond_9

    const/4 v6, 0x1

    :goto_1
    invoke-direct {v8, v3, v6}, Landroid/app/assist/AssistStructure$ViewNodeText;-><init>(Landroid/os/Parcel;Z)V

    iput-object v8, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    .line 619
    :cond_6
    const/high16 v6, 0x400000

    and-int/2addr v6, v1

    if-eqz v6, :cond_7

    .line 620
    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    .line 622
    :cond_7
    const/high16 v6, 0x100000

    and-int/2addr v6, v1

    if-eqz v6, :cond_a

    .line 623
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 628
    .local v0, "NCHILDREN":I
    new-array v6, v0, [Landroid/app/assist/AssistStructure$ViewNode;

    iput-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    .line 629
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_a

    .line 630
    iget-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    new-instance v7, Landroid/app/assist/AssistStructure$ViewNode;

    add-int/lit8 v8, p2, 0x1

    invoke-direct {v7, p1, v8}, Landroid/app/assist/AssistStructure$ViewNode;-><init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V

    aput-object v7, v6, v2

    .line 629
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 591
    .end local v0    # "NCHILDREN":I
    .end local v2    # "i":I
    :cond_8
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 592
    .local v5, "val":I
    and-int/lit16 v6, v5, 0x7fff

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    .line 593
    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0x7fff

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    .line 594
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 595
    and-int/lit16 v6, v5, 0x7fff

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    .line 596
    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0x7fff

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    goto/16 :goto_0

    .end local v5    # "val":I
    :cond_9
    move v6, v7

    .line 617
    goto :goto_1

    .line 568
    :cond_a
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 821
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    return v0
.end method

.method public getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1049
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 812
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 794
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    return v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1027
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 723
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    return v0
.end method

.method public getIdEntry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    return-object v0
.end method

.method public getIdPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getIdType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    return-object v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 757
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    return v0
.end method

.method public getScrollX()I
    .locals 1

    .prologue
    .line 772
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 780
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 940
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    :cond_0
    return-object v0
.end method

.method public getTextBackgroundColor()I
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getTextLineBaselines()[I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1019
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    :cond_0
    return-object v0
.end method

.method public getTextLineCharOffsets()[I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1009
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    :cond_0
    return-object v0
.end method

.method public getTextSelectionEnd()I
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTextSelectionStart()I
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSize:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextStyle()I
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextStyle:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 764
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    return v0
.end method

.method public getTransformation()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 829
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 787
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    return v0
.end method

.method public isAccessibilityFocused()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 873
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isActivated()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 901
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isAssistBlocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 836
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 880
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 887
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isClickable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 850
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isContextClickable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 915
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 843
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isFocusable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 857
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isFocused()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 865
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isLongClickable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 908
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSelected()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 894
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method writeSelfToParcel(Landroid/os/Parcel;Landroid/os/PooledStringWriter;[F)I
    .locals 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "pwriter"    # Landroid/os/PooledStringWriter;
    .param p3, "tmpMatrix"    # [F

    .prologue
    const/high16 v6, 0x400000

    const/high16 v5, 0x200000

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 636
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const v4, 0xfffff

    and-int v0, v1, v4

    .line 637
    .local v0, "flags":I
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 638
    or-int/2addr v0, v5

    .line 640
    :cond_0
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    and-int/lit16 v1, v1, -0x8000

    if-nez v1, :cond_1

    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    and-int/lit16 v1, v1, -0x8000

    if-eqz v1, :cond_14

    .line 642
    :cond_1
    :goto_0
    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    .line 644
    :cond_2
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    if-nez v1, :cond_3

    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    if-eqz v1, :cond_4

    .line 645
    :cond_3
    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    .line 647
    :cond_4
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_5

    .line 648
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    .line 650
    :cond_5
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_6

    .line 651
    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    .line 653
    :cond_6
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_7

    .line 654
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 656
    :cond_7
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    .line 657
    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    .line 659
    :cond_8
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v1, :cond_9

    .line 660
    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    .line 661
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$ViewNodeText;->isSimple()Z

    move-result v1

    if-nez v1, :cond_9

    .line 662
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 665
    :cond_9
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_a

    .line 666
    or-int/2addr v0, v6

    .line 668
    :cond_a
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    if-eqz v1, :cond_b

    .line 669
    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    .line 672
    :cond_b
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 674
    and-int v1, v0, v5

    if-eqz v1, :cond_c

    .line 675
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    if-eqz v1, :cond_c

    .line 677
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    .line 678
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 679
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    .line 680
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    .line 684
    :cond_c
    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_17

    .line 685
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    :goto_1
    const/high16 v1, 0x8000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    .line 694
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    :cond_d
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    .line 698
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 699
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 701
    :cond_e
    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    .line 702
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 704
    :cond_f
    const/high16 v1, 0x20000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    .line 705
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 707
    :cond_10
    const/high16 v1, 0x2000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    .line 708
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v1, p1, v3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 710
    :cond_11
    const/high16 v1, 0x1000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    .line 711
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    const/high16 v4, 0x800000

    and-int/2addr v4, v0

    if-nez v4, :cond_18

    :goto_2
    invoke-virtual {v1, p1, v2}, Landroid/app/assist/AssistStructure$ViewNodeText;->writeToParcel(Landroid/os/Parcel;Z)V

    .line 713
    :cond_12
    and-int v1, v0, v6

    if-eqz v1, :cond_13

    .line 714
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 716
    :cond_13
    return v0

    .line 641
    :cond_14
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    and-int/lit16 v1, v1, -0x8000

    if-eqz v1, :cond_15

    move v1, v2

    :goto_3
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    and-int/lit16 v4, v4, -0x8000

    if-eqz v4, :cond_16

    move v4, v2

    :goto_4
    or-int/2addr v1, v4

    .line 640
    if-eqz v1, :cond_2

    goto/16 :goto_0

    :cond_15
    move v1, v3

    .line 641
    goto :goto_3

    :cond_16
    move v4, v3

    goto :goto_4

    .line 690
    :cond_17
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    shl-int/lit8 v1, v1, 0x10

    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    or-int/2addr v1, v4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    shl-int/lit8 v1, v1, 0x10

    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    or-int/2addr v1, v4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_18
    move v2, v3

    .line 711
    goto :goto_2
.end method
