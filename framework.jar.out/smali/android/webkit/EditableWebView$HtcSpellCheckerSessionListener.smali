.class Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;
.super Ljava/lang/Object;
.source "EditableWebView.java"

# interfaces
.implements Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HtcSpellCheckerSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/EditableWebView;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 4362
    iput-object p1, p0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/EditableWebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .locals 24
    .parameter "results"

    .prologue
    .line 4366
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    .line 4367
    move-object/from16 v5, p1

    .local v5, arr$:[Landroid/view/textservice/SuggestionsInfo;
    array-length v15, v5

    .local v15, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v15, :cond_2

    aget-object v11, v5, v10

    .line 4368
    .local v11, info:Landroid/view/textservice/SuggestionsInfo;
    invoke-virtual {v11}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsAttributes()I

    move-result v6

    .line 4369
    .local v6, attr:I
    and-int/lit8 v17, v6, 0x2

    if-lez v17, :cond_1

    const/4 v13, 0x1

    .line 4370
    .local v13, isLooksLikeTypo:Z
    :goto_1
    invoke-virtual {v11}, Landroid/view/textservice/SuggestionsInfo;->getCookie()I

    move-result v7

    .line 4371
    .local v7, cookie:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkit/EditableWebView;->mBatchSpellCheckMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/webkit/EditableWebView$SpellCheckItem;

    .line 4372
    .local v14, item:Landroid/webkit/EditableWebView$SpellCheckItem;
    if-eqz v14, :cond_0

    .line 4373
    const-string v17, "KENLOG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "onGetSuggestions: word# "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v14, Landroid/webkit/EditableWebView$SpellCheckItem;->mWord:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\ttypo# "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\tcookie# "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4374
    iput-boolean v13, v14, Landroid/webkit/EditableWebView$SpellCheckItem;->mIsLooksLikeTypo:Z

    .line 4375
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkit/EditableWebView;->mBatchSpellCheckCompleteList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4367
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 4369
    .end local v7           #cookie:I
    .end local v13           #isLooksLikeTypo:Z
    .end local v14           #item:Landroid/webkit/EditableWebView$SpellCheckItem;
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .line 4379
    .end local v6           #attr:I
    .end local v11           #info:Landroid/view/textservice/SuggestionsInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkit/EditableWebView;->mBatchSpellCheckPendingList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_4

    .line 4380
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v17, v0

    #getter for: Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Landroid/webkit/EditableWebView;->access$300(Landroid/webkit/EditableWebView;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x1389

    const-wide/16 v19, 0x1f4

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4427
    .end local v5           #arr$:[Landroid/view/textservice/SuggestionsInfo;
    .end local v10           #i$:I
    .end local v15           #len$:I
    :cond_3
    :goto_2
    return-void

    .line 4382
    .restart local v5       #arr$:[Landroid/view/textservice/SuggestionsInfo;
    .restart local v10       #i$:I
    .restart local v15       #len$:I
    :cond_4
    const-string v17, "KENLOG"

    const-string/jumbo v18, "onGetSuggestions: Ready to send the result back to native. \u02ca_>\u02cb"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4383
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkit/EditableWebView;->mBatchSpellCheckCompleteList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/webkit/EditableWebView$SpellCheckItem;

    .line 4384
    .restart local v14       #item:Landroid/webkit/EditableWebView$SpellCheckItem;
    iget-boolean v0, v14, Landroid/webkit/EditableWebView$SpellCheckItem;->mIsLooksLikeTypo:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    .line 4385
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v17, v0

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static/range {v17 .. v17}, Landroid/webkit/EditableWebView;->access$1800(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v17

    const/16 v18, 0x231

    const/16 v19, 0x0

    iget v0, v14, Landroid/webkit/EditableWebView$SpellCheckItem;->mNode:I

    move/from16 v20, v0

    new-instance v21, Landroid/graphics/Point;

    iget v0, v14, Landroid/webkit/EditableWebView$SpellCheckItem;->mStartIndex:I

    move/from16 v22, v0

    iget v0, v14, Landroid/webkit/EditableWebView$SpellCheckItem;->mEndIndex:I

    move/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual/range {v17 .. v21}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_3

    .line 4388
    .end local v5           #arr$:[Landroid/view/textservice/SuggestionsInfo;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v14           #item:Landroid/webkit/EditableWebView$SpellCheckItem;
    .end local v15           #len$:I
    :cond_6
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 4390
    const/16 v17, 0x0

    aget-object v11, p1, v17

    .line 4391
    .restart local v11       #info:Landroid/view/textservice/SuggestionsInfo;
    invoke-virtual {v11}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsAttributes()I

    move-result v6

    .line 4393
    .restart local v6       #attr:I
    and-int/lit8 v17, v6, 0x1

    if-lez v17, :cond_7

    const/4 v12, 0x1

    .line 4394
    .local v12, isInDictionary:Z
    :goto_4
    and-int/lit8 v17, v6, 0x2

    if-lez v17, :cond_8

    const/4 v13, 0x1

    .line 4395
    .restart local v13       #isLooksLikeTypo:Z
    :goto_5
    invoke-virtual {v11}, Landroid/view/textservice/SuggestionsInfo;->getCookie()I

    move-result v7

    .line 4397
    .restart local v7       #cookie:I
    const-string v17, "KENLOG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "\tisInDictionary# "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\tisLooksLikeTypo# "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\tcookie# "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4400
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/webkit/EditableWebView;->mShowSuggestionWindowAfterSpellCheck:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    if-eqz v13, :cond_a

    .line 4401
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/EditableWebView;->getHandler()Landroid/os/Handler;

    move-result-object v17

    new-instance v18, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener$1;-><init>(Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4409
    invoke-virtual {v11}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsCount()I

    move-result v8

    .line 4412
    .local v8, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkit/EditableWebView;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 4413
    const/4 v9, 0x0

    .local v9, i:I
    :goto_6
    if-ge v9, v8, :cond_9

    .line 4414
    invoke-virtual {v11, v9}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionAt(I)Ljava/lang/String;

    move-result-object v16

    .line 4415
    .local v16, suggestion:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkit/EditableWebView;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4413
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 4393
    .end local v7           #cookie:I
    .end local v8           #count:I
    .end local v9           #i:I
    .end local v12           #isInDictionary:Z
    .end local v13           #isLooksLikeTypo:Z
    .end local v16           #suggestion:Ljava/lang/String;
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 4394
    .restart local v12       #isInDictionary:Z
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 4417
    .restart local v7       #cookie:I
    .restart local v8       #count:I
    .restart local v9       #i:I
    .restart local v13       #isLooksLikeTypo:Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    move-object/from16 v17, v0

    sget-object v18, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->SPELL_CHECK:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 4418
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v17, v0

    const/high16 v18, -0x1

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/webkit/EditableWebView;->updateSelectionColors(IZ)V

    .line 4420
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/webkit/EditableWebView;->mSCcaret:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    .line 4421
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v17, v0

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static/range {v17 .. v17}, Landroid/webkit/EditableWebView;->access$1800(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/webkit/EditableWebView;->mSCcaret:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->centerX()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/webkit/EditableWebView;->mSCcaret:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->centerY()I

    move-result v19

    const/16 v20, 0x1

    const/16 v21, 0x1

    invoke-virtual/range {v17 .. v21}, Landroid/webkit/WebViewCore;->doSelection(IIZZ)V

    goto/16 :goto_2

    .line 4424
    .end local v8           #count:I
    .end local v9           #i:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v17, v0

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static/range {v17 .. v17}, Landroid/webkit/EditableWebView;->access$1800(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v18

    const/16 v19, 0x231

    if-eqz v13, :cond_b

    const/16 v17, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/EditableWebView;->mSCnode:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;->this$0:Landroid/webkit/EditableWebView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/webkit/EditableWebView;->mSCindex:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_b
    const/16 v17, 0x0

    goto :goto_7
.end method
