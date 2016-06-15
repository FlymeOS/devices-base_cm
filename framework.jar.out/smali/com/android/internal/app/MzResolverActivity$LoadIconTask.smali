.class Lcom/android/internal/app/MzResolverActivity$LoadIconTask;
.super Landroid/os/AsyncTask;
.source "MzResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MzResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;",
        "Ljava/lang/Void;",
        "Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/MzResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/MzResolverActivity;)V
    .locals 0

    .prologue
    .line 1512
    iput-object p1, p0, Lcom/android/internal/app/MzResolverActivity$LoadIconTask;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;)Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;
    .locals 3
    .param p1, "params"    # [Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    .prologue
    .line 1515
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 1516
    .local v0, "info":Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;
    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1517
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$LoadIconTask;->this$0:Lcom/android/internal/app/MzResolverActivity;

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/MzResolverActivity;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 1519
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1512
    check-cast p1, [Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MzResolverActivity$LoadIconTask;->doInBackground([Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;)Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$LoadIconTask;->this$0:Lcom/android/internal/app/MzResolverActivity;

    # getter for: Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;
    invoke-static {v0}, Lcom/android/internal/app/MzResolverActivity;->access$000(Lcom/android/internal/app/MzResolverActivity;)Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->notifyDataSetChanged()V

    .line 1525
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1512
    check-cast p1, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MzResolverActivity$LoadIconTask;->onPostExecute(Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;)V

    return-void
.end method
