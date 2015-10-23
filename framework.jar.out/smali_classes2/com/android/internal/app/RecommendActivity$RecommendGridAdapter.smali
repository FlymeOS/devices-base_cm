.class Lcom/android/internal/app/RecommendActivity$RecommendGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecommendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/RecommendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecommendGridAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/RecommendActivity;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/RecommendActivity;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/internal/app/RecommendActivity$RecommendGridAdapter;->this$0:Lcom/android/internal/app/RecommendActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/app/RecommendActivity;Lcom/android/internal/app/RecommendActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/app/RecommendActivity;
    .param p2, "x1"    # Lcom/android/internal/app/RecommendActivity$1;

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lcom/android/internal/app/RecommendActivity$RecommendGridAdapter;-><init>(Lcom/android/internal/app/RecommendActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity$RecommendGridAdapter;->this$0:Lcom/android/internal/app/RecommendActivity;

    # getter for: Lcom/android/internal/app/RecommendActivity;->mOpenHelper:Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;
    invoke-static {v0}, Lcom/android/internal/app/RecommendActivity;->access$100(Lcom/android/internal/app/RecommendActivity;)Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 351
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 356
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 361
    const/4 v3, 0x0

    .line 362
    .local v3, "rootView":Landroid/view/View;
    const/4 v1, 0x0

    .line 363
    .local v1, "imageView":Landroid/widget/ImageView;
    const/4 v4, 0x0

    .line 365
    .local v4, "textView":Landroid/widget/TextView;
    if-eqz p2, :cond_1

    .line 366
    move-object v3, p2

    .line 373
    :goto_0
    const v5, 0x1020006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "imageView":Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 374
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    const v5, 0x1020014

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "textView":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 377
    .restart local v4    # "textView":Landroid/widget/TextView;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/app/RecommendActivity$RecommendGridAdapter;->this$0:Lcom/android/internal/app/RecommendActivity;

    # getter for: Lcom/android/internal/app/RecommendActivity;->mOpenHelper:Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;
    invoke-static {v5}, Lcom/android/internal/app/RecommendActivity;->access$100(Lcom/android/internal/app/RecommendActivity;)Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->getInfo(I)Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper$DisplayResolveInfo;

    move-result-object v2

    .line 379
    .local v2, "info":Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper$DisplayResolveInfo;
    iget-object v5, v2, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v5, v2, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_0

    .line 381
    iget-object v5, v2, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v6, p0, Lcom/android/internal/app/RecommendActivity$RecommendGridAdapter;->this$0:Lcom/android/internal/app/RecommendActivity;

    invoke-virtual {v6}, Lcom/android/internal/app/RecommendActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 383
    :cond_0
    iget-object v5, v2, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .end local v2    # "info":Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper$DisplayResolveInfo;
    :goto_1
    return-object v3

    .line 368
    :cond_1
    iget-object v5, p0, Lcom/android/internal/app/RecommendActivity$RecommendGridAdapter;->this$0:Lcom/android/internal/app/RecommendActivity;

    invoke-virtual {v5}, Lcom/android/internal/app/RecommendActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/flyme/internal/R$layout;->mz_resolve_grid_item:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
