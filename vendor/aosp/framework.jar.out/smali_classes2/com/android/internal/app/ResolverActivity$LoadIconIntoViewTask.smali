.class Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;
.super Landroid/os/AsyncTask;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadIconIntoViewTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
        "Ljava/lang/Void;",
        "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final mTargetView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/widget/ImageView;)V
    .locals 0
    .param p2, "target"    # Landroid/widget/ImageView;

    .prologue
    .line 1158
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1159
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->mTargetView:Landroid/widget/ImageView;

    .line 1160
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 3
    .param p1, "params"    # [Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 1164
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 1165
    .local v0, "info":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1166
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverActivity;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 1168
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1155
    check-cast p1, [Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->doInBackground([Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->mTargetView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1174
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1155
    check-cast p1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->onPostExecute(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    return-void
.end method
