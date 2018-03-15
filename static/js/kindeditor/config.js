KindEditor.ready(function(K) {
                K.editor = K.create('textarea[name=content]', {
                    // width:800,
                    minWidth: 680,
                    height: 300,
                    uploadJson: '/admin/upload/kindeditor',
                });
        });