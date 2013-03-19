.class Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;
.super Landroid/os/Handler;
.source "CarLocalMusicSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const v9, 0x7f07004d

    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 194
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 196
    :pswitch_0
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v5, v5, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;

    if-eqz v5, :cond_0

    .line 197
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v5, v5, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;

    invoke-virtual {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 202
    :pswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 205
    .local v3, queryType:I
    const/4 v5, 0x1

    if-ne v5, v3, :cond_6

    .line 207
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 209
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_3

    .line 212
    :cond_1
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$308(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    .line 282
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 284
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mNoResultCount:I
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    move-result v5

    if-lt v5, v7, :cond_10

    .line 285
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    const v6, 0x7f070037

    invoke-virtual {v5, v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->showEmptyView(I)V

    goto :goto_0

    .line 214
    :cond_3
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 217
    :goto_2
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_2

    .line 218
    new-instance v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    invoke-direct {v0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;-><init>()V

    .line 219
    .local v0, addItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursorIdIndex:I
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->setId(J)V

    .line 220
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursorArtistIndex:I
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$600(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, artist:Ljava/lang/String;
    if-eqz v2, :cond_4

    const-string v5, "<unknown>"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 222
    :cond_4
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    invoke-virtual {v5, v9}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 224
    :cond_5
    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->setPrimaryText(Ljava/lang/String;)V

    .line 225
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 229
    .end local v0           #addItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    .end local v2           #artist:Ljava/lang/String;
    :cond_6
    const/4 v5, 0x2

    if-ne v5, v3, :cond_b

    .line 231
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$700(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 233
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_8

    .line 236
    :cond_7
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$308(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    goto/16 :goto_1

    .line 238
    :cond_8
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$700(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$900(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 241
    :goto_3
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_2

    .line 242
    new-instance v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    invoke-direct {v0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;-><init>()V

    .line 243
    .restart local v0       #addItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorIdIndex:I
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->setId(J)V

    .line 244
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorAlbumIndex:I
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, album:Ljava/lang/String;
    if-eqz v1, :cond_9

    const-string v5, "<unknown>"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 246
    :cond_9
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    const v6, 0x7f07004e

    invoke-virtual {v5, v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 248
    :cond_a
    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->setPrimaryText(Ljava/lang/String;)V

    .line 249
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorArtIndex:I
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->setArtPath(Ljava/lang/String;)V

    .line 250
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$700(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 254
    .end local v0           #addItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    .end local v1           #album:Ljava/lang/String;
    :cond_b
    if-ne v7, v3, :cond_2

    .line 256
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 258
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_d

    .line 261
    :cond_c
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$308(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    goto/16 :goto_1

    .line 263
    :cond_d
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 266
    :goto_4
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_2

    .line 267
    new-instance v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    invoke-direct {v0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;-><init>()V

    .line 268
    .restart local v0       #addItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorIdIndex:I
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1600(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->setId(J)V

    .line 269
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorTitleIndex:I
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1700(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->setPrimaryText(Ljava/lang/String;)V

    .line 270
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorArtistIndex:I
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 271
    .restart local v2       #artist:Ljava/lang/String;
    if-eqz v2, :cond_e

    const-string v5, "<unknown>"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 272
    :cond_e
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    invoke-virtual {v5, v9}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 274
    :cond_f
    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->setSecondaryText(Ljava/lang/String;)V

    .line 275
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorArtIndex:I
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1900(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->setArtPath(Ljava/lang/String;)V

    .line 276
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    .line 289
    .end local v0           #addItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    .end local v2           #artist:Ljava/lang/String;
    :cond_10
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    invoke-virtual {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->hideEmptyErrorView()V

    .line 292
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 293
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 297
    :cond_11
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$700(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 298
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$700(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 302
    :cond_12
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 303
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 307
    :cond_13
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    invoke-static {v7}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    #setter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistSubTitleIndex:I
    invoke-static {v5, v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2102(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I

    .line 308
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    invoke-static {v7}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$900(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    #setter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumSubTitleIndex:I
    invoke-static {v5, v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2202(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I

    .line 309
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    invoke-static {v7}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    #setter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackSubTitleIndex:I
    invoke-static {v5, v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2302(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I

    .line 310
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistNoResultItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    invoke-static {v7}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    #setter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistNoResultItemIndex:I
    invoke-static {v5, v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2402(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I

    .line 311
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumNoResultItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    invoke-static {v7}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2700(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    #setter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumNoResultItemIndex:I
    invoke-static {v5, v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2602(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I

    .line 312
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackNoResultItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    invoke-static {v7}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2900(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    #setter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackNoResultItemIndex:I
    invoke-static {v5, v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2802(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I

    .line 314
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    invoke-virtual {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->DumpQueryItemIndex()V

    .line 316
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v5, v5, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;

    invoke-virtual {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 322
    .end local v3           #queryType:I
    :pswitch_2
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #setter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mIsSearchingCount:I
    invoke-static {v5, v8}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$3002(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I

    .line 323
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$3100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->clear()V

    .line 324
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #setter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mNoResultCount:I
    invoke-static {v5, v8}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$302(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I

    .line 327
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 328
    .local v4, searchStr:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->initOnlineSearch(Ljava/lang/String;)V
    invoke-static {v5, v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$3200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 332
    .end local v4           #searchStr:Ljava/lang/String;
    :pswitch_3
    const-string v5, "[CarLocalMusicSearchActivity]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Message MSG_HANDLE_PROGRESS, mIsSearchingCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mIsSearchingCount:I
    invoke-static {v7}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$3000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mIsSearchingCount:I
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$3000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    move-result v5

    if-lez v5, :cond_14

    .line 334
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v5, v5, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v5, v8}, Lcom/htc/widget/ActionBarSearch;->setProgressVisibility(I)V

    goto/16 :goto_0

    .line 336
    :cond_14
    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v5, v5, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/ActionBarSearch;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/htc/widget/ActionBarSearch;->setProgressVisibility(I)V

    goto/16 :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
