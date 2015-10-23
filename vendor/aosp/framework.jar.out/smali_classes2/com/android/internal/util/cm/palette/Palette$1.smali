.class final Lcom/android/internal/util/cm/palette/Palette$1;
.super Landroid/os/AsyncTask;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/cm/palette/Palette;->generateAsync(Landroid/graphics/Bitmap;ILcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$listener:Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;

.field final synthetic val$numColors:I


# direct methods
.method constructor <init>(ILcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;)V
    .locals 0

    .prologue
    .line 176
    iput p1, p0, Lcom/android/internal/util/cm/palette/Palette$1;->val$numColors:I

    iput-object p2, p0, Lcom/android/internal/util/cm/palette/Palette$1;->val$listener:Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Lcom/android/internal/util/cm/palette/Palette;
    .locals 2
    .param p1, "params"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 179
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget v1, p0, Lcom/android/internal/util/cm/palette/Palette$1;->val$numColors:I

    invoke-static {v0, v1}, Lcom/android/internal/util/cm/palette/Palette;->generate(Landroid/graphics/Bitmap;I)Lcom/android/internal/util/cm/palette/Palette;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 176
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/util/cm/palette/Palette$1;->doInBackground([Landroid/graphics/Bitmap;)Lcom/android/internal/util/cm/palette/Palette;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/internal/util/cm/palette/Palette;)V
    .locals 1
    .param p1, "colorExtractor"    # Lcom/android/internal/util/cm/palette/Palette;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette$1;->val$listener:Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;

    invoke-interface {v0, p1}, Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;->onGenerated(Lcom/android/internal/util/cm/palette/Palette;)V

    .line 185
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 176
    check-cast p1, Lcom/android/internal/util/cm/palette/Palette;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/util/cm/palette/Palette$1;->onPostExecute(Lcom/android/internal/util/cm/palette/Palette;)V

    return-void
.end method
