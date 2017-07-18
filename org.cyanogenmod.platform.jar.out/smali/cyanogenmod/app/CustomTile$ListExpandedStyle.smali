.class public Lcyanogenmod/app/CustomTile$ListExpandedStyle;
.super Lcyanogenmod/app/CustomTile$ExpandedStyle;
.source "CustomTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/CustomTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListExpandedStyle"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcyanogenmod/app/CustomTile$ExpandedStyle;-><init>(Lcyanogenmod/app/CustomTile$ExpandedStyle;)V

    .line 555
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcyanogenmod/app/CustomTile$ListExpandedStyle;->internalStyleId(I)V

    .line 554
    return-void
.end method


# virtual methods
.method public setListItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcyanogenmod/app/CustomTile$ExpandedListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 564
    .local p1, "expandedListItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcyanogenmod/app/CustomTile$ExpandedListItem;>;"
    invoke-virtual {p0, p1}, Lcyanogenmod/app/CustomTile$ListExpandedStyle;->internalSetExpandedItems(Ljava/util/ArrayList;)V

    .line 563
    return-void
.end method
