.class Landroid/media/ExifInterface$Rational;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rational"
.end annotation


# instance fields
.field public final denominator:J

.field public final numerator:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 5
    .param p1, "numerator"    # J
    .param p3, "denominator"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    cmp-long v0, p3, v2

    if-nez v0, :cond_0

    .line 383
    iput-wide v2, p0, Landroid/media/ExifInterface$Rational;->numerator:J

    .line 384
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroid/media/ExifInterface$Rational;->denominator:J

    .line 385
    return-void

    .line 387
    :cond_0
    iput-wide p1, p0, Landroid/media/ExifInterface$Rational;->numerator:J

    .line 388
    iput-wide p3, p0, Landroid/media/ExifInterface$Rational;->denominator:J

    .line 380
    return-void
.end method

.method synthetic constructor <init>(JJLandroid/media/ExifInterface$Rational;)V
    .locals 1
    .param p1, "numerator"    # J
    .param p3, "denominator"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/ExifInterface$Rational;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public calculate()D
    .locals 4

    .prologue
    .line 397
    iget-wide v0, p0, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-double v0, v0

    iget-wide v2, p0, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Landroid/media/ExifInterface$Rational;->numerator:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/media/ExifInterface$Rational;->denominator:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
