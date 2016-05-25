.class Landroid/media/ImageReader$SurfaceImage;
.super Landroid/media/Image;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageReader$SurfaceImage$SurfacePlane;
    }
.end annotation


# instance fields
.field private mHeight:I

.field private mIsImageValid:Z

.field private mLockedBuffer:J

.field private mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

.field private mTimestamp:J

.field private mWidth:I

.field final synthetic this$0:Landroid/media/ImageReader;


# direct methods
.method public constructor <init>(Landroid/media/ImageReader;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 554
    iput-object p1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-direct {p0}, Landroid/media/Image;-><init>()V

    .line 732
    iput v0, p0, Landroid/media/ImageReader$SurfaceImage;->mHeight:I

    .line 733
    iput v0, p0, Landroid/media/ImageReader$SurfaceImage;->mWidth:I

    .line 555
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    .line 556
    return-void
.end method

.method static synthetic access$000(Landroid/media/ImageReader$SurfaceImage;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/ImageReader$SurfaceImage;

    .prologue
    .line 553
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->createSurfacePlanes()V

    return-void
.end method

.method static synthetic access$100(Landroid/media/ImageReader$SurfaceImage;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/ImageReader$SurfaceImage;
    .param p1, "x1"    # Z

    .prologue
    .line 553
    invoke-direct {p0, p1}, Landroid/media/ImageReader$SurfaceImage;->setImageValid(Z)V

    return-void
.end method

.method static synthetic access$1000(Landroid/media/ImageReader$SurfaceImage;II)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageReader$SurfaceImage;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 553
    invoke-direct {p0, p1, p2}, Landroid/media/ImageReader$SurfaceImage;->nativeImageGetBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/ImageReader$SurfaceImage;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/ImageReader$SurfaceImage;

    .prologue
    .line 553
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->clearSurfacePlanes()V

    return-void
.end method

.method static synthetic access$900(Landroid/media/ImageReader$SurfaceImage;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageReader$SurfaceImage;

    .prologue
    .line 553
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->isImageValid()Z

    move-result v0

    return v0
.end method

.method private clearSurfacePlanes()V
    .locals 3

    .prologue
    .line 641
    iget-boolean v1, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v1, :cond_1

    .line 642
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 643
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 644
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    aget-object v1, v1, v0

    # invokes: Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->clearBuffer()V
    invoke-static {v1}, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->access$700(Landroid/media/ImageReader$SurfaceImage$SurfacePlane;)V

    .line 645
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 642
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 649
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private createSurfacePlanes()V
    .locals 3

    .prologue
    .line 652
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    # getter for: Landroid/media/ImageReader;->mNumPlanes:I
    invoke-static {v1}, Landroid/media/ImageReader;->access$800(Landroid/media/ImageReader;)I

    move-result v1

    new-array v1, v1, [Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    iput-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    .line 653
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    # getter for: Landroid/media/ImageReader;->mNumPlanes:I
    invoke-static {v1}, Landroid/media/ImageReader;->access$800(Landroid/media/ImageReader;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 654
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    iget-object v2, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    # getter for: Landroid/media/ImageReader;->mFormat:I
    invoke-static {v2}, Landroid/media/ImageReader;->access$600(Landroid/media/ImageReader;)I

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/media/ImageReader$SurfaceImage;->nativeCreatePlane(II)Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    move-result-object v2

    aput-object v2, v1, v0

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 656
    :cond_0
    return-void
.end method

.method private isImageValid()Z
    .locals 1

    .prologue
    .line 637
    iget-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    return v0
.end method

.method private synchronized native declared-synchronized nativeCreatePlane(II)Landroid/media/ImageReader$SurfaceImage$SurfacePlane;
.end method

.method private synchronized native declared-synchronized nativeGetHeight()I
.end method

.method private synchronized native declared-synchronized nativeGetWidth()I
.end method

.method private synchronized native declared-synchronized nativeImageGetBuffer(II)Ljava/nio/ByteBuffer;
.end method

.method private setImageValid(Z)V
    .locals 0
    .param p1, "isValid"    # Z

    .prologue
    .line 633
    iput-boolean p1, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    .line 634
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 560
    iget-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    # invokes: Landroid/media/ImageReader;->releaseImage(Landroid/media/Image;)V
    invoke-static {v0, p0}, Landroid/media/ImageReader;->access$500(Landroid/media/ImageReader;Landroid/media/Image;)V

    .line 563
    :cond_0
    return-void
.end method

.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 626
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 630
    return-void

    .line 628
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getFormat()I
    .locals 2

    .prologue
    .line 571
    iget-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    # getter for: Landroid/media/ImageReader;->mFormat:I
    invoke-static {v0}, Landroid/media/ImageReader;->access$600(Landroid/media/ImageReader;)I

    move-result v0

    return v0

    .line 574
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image is already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 593
    iget-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_2

    .line 594
    iget v0, p0, Landroid/media/ImageReader$SurfaceImage;->mHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 595
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->getFormat()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    :goto_0
    iput v0, p0, Landroid/media/ImageReader$SurfaceImage;->mHeight:I

    .line 598
    :cond_0
    iget v0, p0, Landroid/media/ImageReader$SurfaceImage;->mHeight:I

    return v0

    .line 595
    :cond_1
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetHeight()I

    move-result v0

    goto :goto_0

    .line 600
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image is already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPlanes()[Landroid/media/Image$Plane;
    .locals 2

    .prologue
    .line 615
    iget-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    invoke-virtual {v0}, [Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/Image$Plane;

    return-object v0

    .line 619
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image is already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReader()Landroid/media/ImageReader;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 606
    iget-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_0

    .line 607
    iget-wide v0, p0, Landroid/media/ImageReader$SurfaceImage;->mTimestamp:J

    return-wide v0

    .line 609
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image is already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 580
    iget-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_2

    .line 581
    iget v0, p0, Landroid/media/ImageReader$SurfaceImage;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 582
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->getFormat()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    :goto_0
    iput v0, p0, Landroid/media/ImageReader$SurfaceImage;->mWidth:I

    .line 585
    :cond_0
    iget v0, p0, Landroid/media/ImageReader$SurfaceImage;->mWidth:I

    return v0

    .line 582
    :cond_1
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetWidth()I

    move-result v0

    goto :goto_0

    .line 587
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image is already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
