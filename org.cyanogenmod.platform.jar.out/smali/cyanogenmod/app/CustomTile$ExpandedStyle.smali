.class public Lcyanogenmod/app/CustomTile$ExpandedStyle;
.super Ljava/lang/Object;
.source "CustomTile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/CustomTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandedStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/CustomTile$ExpandedStyle$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/app/CustomTile$ExpandedStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final GRID_STYLE:I = 0x0

.field public static final LIST_STYLE:I = 0x1

.field public static final NO_STYLE:I = -0x1

.field public static final REMOTE_STYLE:I = 0x2


# instance fields
.field private contentViews:Landroid/widget/RemoteViews;

.field private expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

.field private styleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 509
    new-instance v0, Lcyanogenmod/app/CustomTile$ExpandedStyle$1;

    invoke-direct {v0}, Lcyanogenmod/app/CustomTile$ExpandedStyle$1;-><init>()V

    .line 508
    sput-object v0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 347
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    const/4 v0, -0x1

    iput v0, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->styleId:I

    .line 368
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 379
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .line 384
    .local v1, "parcelableVersion":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    sget-object v2, Lcyanogenmod/app/CustomTile$ExpandedItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcyanogenmod/app/CustomTile$ExpandedItem;

    iput-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

    .line 388
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->styleId:I

    .line 391
    :cond_1
    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 393
    sget-object v2, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    iput-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->contentViews:Landroid/widget/RemoteViews;

    .line 398
    :cond_2
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 376
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/app/CustomTile$ExpandedStyle;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcyanogenmod/app/CustomTile$ExpandedStyle;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcyanogenmod/app/CustomTile$ExpandedStyle;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcyanogenmod/app/CustomTile$ExpandedStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x0

    return v0
.end method

.method public getContentViews()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->contentViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getExpandedItems()[Lcyanogenmod/app/CustomTile$ExpandedItem;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

    return-object v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->styleId:I

    return v0
.end method

.method protected internalSetExpandedItems(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcyanogenmod/app/CustomTile$ExpandedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcyanogenmod/app/CustomTile$ExpandedItem;>;"
    iget v0, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->styleId:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    .line 415
    const-class v0, Lcyanogenmod/app/CustomTile;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 416
    const-string/jumbo v1, "Attempted to publish greater than max grid item count"

    .line 415
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcyanogenmod/app/CustomTile$ExpandedItem;

    iput-object v0, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

    .line 419
    iget-object v0, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 413
    return-void
.end method

.method protected internalSetRemoteViews(Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 426
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->contentViews:Landroid/widget/RemoteViews;

    .line 425
    return-void
.end method

.method protected internalStyleId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 433
    iput p1, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->styleId:I

    .line 432
    return-void
.end method

.method public setBuilder(Lcyanogenmod/app/CustomTile$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcyanogenmod/app/CustomTile$Builder;

    .prologue
    .line 405
    if-eqz p1, :cond_0

    .line 406
    invoke-virtual {p1, p0}, Lcyanogenmod/app/CustomTile$Builder;->setExpandedStyle(Lcyanogenmod/app/CustomTile$ExpandedStyle;)Lcyanogenmod/app/CustomTile$Builder;

    .line 404
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "NEW_LINE":Ljava/lang/String;
    iget-object v3, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

    if-eqz v3, :cond_0

    .line 496
    const-string/jumbo v3, "expandedItems= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    iget-object v4, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    .line 498
    .local v2, "item":Lcyanogenmod/app/CustomTile$ExpandedItem;
    const-string/jumbo v6, "     item="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcyanogenmod/app/CustomTile$ExpandedItem;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 501
    .end local v2    # "item":Lcyanogenmod/app/CustomTile$ExpandedItem;
    :cond_0
    const-string/jumbo v3, "styleId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->styleId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 468
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 471
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

    if-eqz v1, :cond_0

    .line 472
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 477
    :goto_0
    iget v1, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->styleId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->contentViews:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_1

    .line 481
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->contentViews:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 488
    :goto_1
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 466
    return-void

    .line 475
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 484
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
