.class Lcom/android/internal/widget/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ViewPager;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/ViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ViewPager;

    .prologue
    .line 2764
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager$PagerObserver;->this$0:Lcom/android/internal/widget/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/ViewPager;Lcom/android/internal/widget/ViewPager$PagerObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ViewPager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager$PagerObserver;-><init>(Lcom/android/internal/widget/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2767
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager$PagerObserver;->this$0:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->dataSetChanged()V

    .line 2766
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2771
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager$PagerObserver;->this$0:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->dataSetChanged()V

    .line 2770
    return-void
.end method
