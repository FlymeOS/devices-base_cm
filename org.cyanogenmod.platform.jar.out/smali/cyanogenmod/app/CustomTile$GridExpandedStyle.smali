.class public Lcyanogenmod/app/CustomTile$GridExpandedStyle;
.super Lcyanogenmod/app/CustomTile$ExpandedStyle;
.source "CustomTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/CustomTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GridExpandedStyle"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcyanogenmod/app/CustomTile$ExpandedStyle;-><init>(Lcyanogenmod/app/CustomTile$ExpandedStyle;)V

    .line 530
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcyanogenmod/app/CustomTile$GridExpandedStyle;->internalStyleId(I)V

    .line 529
    return-void
.end method


# virtual methods
.method public setGridItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcyanogenmod/app/CustomTile$ExpandedGridItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 542
    .local p1, "expandedGridItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcyanogenmod/app/CustomTile$ExpandedGridItem;>;"
    invoke-virtual {p0, p1}, Lcyanogenmod/app/CustomTile$GridExpandedStyle;->internalSetExpandedItems(Ljava/util/ArrayList;)V

    .line 541
    return-void
.end method
