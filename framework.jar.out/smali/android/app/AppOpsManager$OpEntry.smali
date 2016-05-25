.class public Landroid/app/AppOpsManager$OpEntry;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpEntry"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAllowedCount:I

.field private final mDuration:I

.field private final mIgnoredCount:I

.field private final mMode:I

.field private final mOp:I

.field private final mRejectTime:J

.field private final mTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1443
    new-instance v0, Landroid/app/AppOpsManager$OpEntry$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$OpEntry$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$OpEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIJJIII)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "mode"    # I
    .param p3, "time"    # J
    .param p5, "rejectTime"    # J
    .param p7, "duration"    # I
    .param p8, "allowedCount"    # I
    .param p9, "ignoredCount"    # I

    .prologue
    .line 1375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1376
    iput p1, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    .line 1377
    iput p2, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    .line 1378
    iput-wide p3, p0, Landroid/app/AppOpsManager$OpEntry;->mTime:J

    .line 1379
    iput-wide p5, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTime:J

    .line 1380
    iput p7, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    .line 1381
    iput p8, p0, Landroid/app/AppOpsManager$OpEntry;->mAllowedCount:I

    .line 1382
    iput p9, p0, Landroid/app/AppOpsManager$OpEntry;->mIgnoredCount:I

    .line 1383
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1434
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    .line 1435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    .line 1436
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mTime:J

    .line 1437
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTime:J

    .line 1438
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    .line 1439
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mAllowedCount:I

    .line 1440
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mIgnoredCount:I

    .line 1441
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1419
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowedCount()I
    .locals 1

    .prologue
    .line 1410
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mAllowedCount:I

    return v0
.end method

.method public getDuration()I
    .locals 4

    .prologue
    .line 1406
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/app/AppOpsManager$OpEntry;->mTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    goto :goto_0
.end method

.method public getIgnoredCount()I
    .locals 1

    .prologue
    .line 1414
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mIgnoredCount:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 1390
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    return v0
.end method

.method public getOp()I
    .locals 1

    .prologue
    .line 1386
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    return v0
.end method

.method public getRejectTime()J
    .locals 2

    .prologue
    .line 1398
    iget-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTime:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 1394
    iget-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mTime:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 1402
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1424
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1425
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1426
    iget-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1427
    iget-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1428
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1429
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mAllowedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1430
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mIgnoredCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1431
    return-void
.end method
