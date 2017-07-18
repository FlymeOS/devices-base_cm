.class public Lcyanogenmod/app/CustomTile$ExpandedItem;
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
    name = "ExpandedItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/CustomTile$ExpandedItem$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/app/CustomTile$ExpandedItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public itemBitmapResource:Landroid/graphics/Bitmap;

.field public itemDrawableResourceId:I

.field public itemSummary:Ljava/lang/String;

.field public itemTitle:Ljava/lang/String;

.field public onClickPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 757
    new-instance v0, Lcyanogenmod/app/CustomTile$ExpandedItem$1;

    invoke-direct {v0}, Lcyanogenmod/app/CustomTile$ExpandedItem$1;-><init>()V

    .line 756
    sput-object v0, Lcyanogenmod/app/CustomTile$ExpandedItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 592
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    const/4 v0, 0x0

    iput-object v0, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemSummary:Ljava/lang/String;

    .line 620
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    const/4 v2, 0x0

    iput-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemSummary:Ljava/lang/String;

    .line 664
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 665
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .line 670
    .local v1, "parcelableVersion":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    .line 671
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 672
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    iput-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->onClickPendingIntent:Landroid/app/PendingIntent;

    .line 674
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 675
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemTitle:Ljava/lang/String;

    .line 677
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 678
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemSummary:Ljava/lang/String;

    .line 680
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemDrawableResourceId:I

    .line 683
    :cond_3
    const/4 v2, 0x2

    if-lt v1, v2, :cond_4

    .line 684
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 685
    sget-object v2, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemBitmapResource:Landroid/graphics/Bitmap;

    .line 690
    :cond_4
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 662
    return-void
.end method

.method synthetic constructor <init>(Lcyanogenmod/app/CustomTile$ExpandedItem;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcyanogenmod/app/CustomTile$ExpandedItem;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 695
    const/4 v0, 0x0

    return v0
.end method

.method protected internalSetItemBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 635
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemBitmapResource:Landroid/graphics/Bitmap;

    .line 634
    return-void
.end method

.method protected internalSetItemDrawable(I)V
    .locals 0
    .param p1, "resourceId"    # I

    .prologue
    .line 628
    iput p1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemDrawableResourceId:I

    .line 627
    return-void
.end method

.method protected internalSetItemSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceId"    # Ljava/lang/String;

    .prologue
    .line 642
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemSummary:Ljava/lang/String;

    .line 641
    return-void
.end method

.method protected internalSetItemTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 649
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemTitle:Ljava/lang/String;

    .line 648
    return-void
.end method

.method protected internalSetOnClickPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 656
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->onClickPendingIntent:Landroid/app/PendingIntent;

    .line 655
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 739
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, "NEW_LINE":Ljava/lang/String;
    iget-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->onClickPendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 741
    const-string/jumbo v2, "onClickPendingIntent= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->onClickPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    :cond_0
    iget-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemTitle:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 744
    const-string/jumbo v2, "itemTitle= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemTitle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    :cond_1
    iget-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemSummary:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 747
    const-string/jumbo v2, "itemSummary= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemSummary:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    :cond_2
    const-string/jumbo v2, "itemDrawableResourceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemDrawableResourceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    iget-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemBitmapResource:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 751
    const-string/jumbo v2, "itemBitmapResource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemBitmapResource:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 701
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 704
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->onClickPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 705
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->onClickPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 710
    :goto_0
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 711
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 716
    :goto_1
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemSummary:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 717
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 718
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemSummary:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 722
    :goto_2
    iget v1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemDrawableResourceId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemBitmapResource:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 726
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemBitmapResource:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 733
    :goto_3
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 699
    return-void

    .line 708
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 714
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 720
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 729
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3
.end method
