.class Lcom/android/internal/util/cm/palette/Palette$Builder$1;
.super Landroid/os/AsyncTask;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/cm/palette/Palette$Builder;->generate(Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Lcom/android/internal/util/cm/palette/Palette;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/util/cm/palette/Palette$Builder;

.field final synthetic val$listener:Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;


# direct methods
.method constructor <init>(Lcom/android/internal/util/cm/palette/Palette$Builder;Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/util/cm/palette/Palette$Builder;
    .param p2, "val$listener"    # Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;

    .prologue
    .line 619
    iput-object p1, p0, Lcom/android/internal/util/cm/palette/Palette$Builder$1;->this$1:Lcom/android/internal/util/cm/palette/Palette$Builder;

    iput-object p2, p0, Lcom/android/internal/util/cm/palette/Palette$Builder$1;->val$listener:Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Lcom/android/internal/util/cm/palette/Palette;
    .locals 1
    .param p1, "params"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette$Builder$1;->this$1:Lcom/android/internal/util/cm/palette/Palette$Builder;

    invoke-virtual {v0}, Lcom/android/internal/util/cm/palette/Palette$Builder;->generate()Lcom/android/internal/util/cm/palette/Palette;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 621
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/util/cm/palette/Palette$Builder$1;->doInBackground([Landroid/graphics/Bitmap;)Lcom/android/internal/util/cm/palette/Palette;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/internal/util/cm/palette/Palette;)V
    .locals 1
    .param p1, "colorExtractor"    # Lcom/android/internal/util/cm/palette/Palette;

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette$Builder$1;->val$listener:Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;

    invoke-interface {v0, p1}, Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;->onGenerated(Lcom/android/internal/util/cm/palette/Palette;)V

    .line 626
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "colorExtractor"    # Ljava/lang/Object;

    .prologue
    .line 626
    check-cast p1, Lcom/android/internal/util/cm/palette/Palette;

    .end local p1    # "colorExtractor":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/util/cm/palette/Palette$Builder$1;->onPostExecute(Lcom/android/internal/util/cm/palette/Palette;)V

    return-void
.end method
